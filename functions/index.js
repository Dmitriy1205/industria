const express = require("express");
const bodyParser = require("body-parser");
const fileParser = require("express-multipart-file-parser");
const admin = require("firebase-admin");
const functions = require("firebase-functions");

const serviceAccount = require("./dir/admin_cert.json");
admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
  storageBucket: "gs://industria-a338a.appspot.com",
});

const app = express();

app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Methods", "GET,PUT,PATCH,POST,DELETE");
  res.header("Access-Control-Allow-Headers",
      "Origin, X-Requested-With, Content-Type, Accept");
  next();
});
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(fileParser);

app.delete("/employees", async (req, res) => {
  try {
    const userId = req.query.userId;
    await admin.auth().deleteUser(userId);
    await admin.firestore().collection("employees").doc(userId).delete();
    await admin.storage().bucket()
        .deleteFiles({prefix: "employee/photos/" + userId});
    res.status(200).send("Employee deleted successfully!");
  } catch (error) {
    console.error("Error deleting employee:", error);
    res.status(500).send("Internal Server Error");
  }
});
app.post("/employees", async (req, res) => {
  try {
    // Access form fields with req.body
    const {email,
      password,
      firstname,
      lastname, phoneNumber, role, dateOfBirth, worksSince} = req.body;

    const file = req.files[0];

    // Create user with email and password
    const user = await admin.auth().createUser({email, password});

    // Set custom claims
    await admin.auth().setCustomUserClaims(user.uid, {employee: true});

    // Create employee record in Firestore
    const photoRef =
     `employee/photos/${user.uid}.${file.mimetype.split("/")[1]}`;
    const id = user.uid;
    const employeeData = {
      id,
      email,
      firstname,
      lastname,
      phoneNumber,
      role,
      dateOfBirth: new Date(dateOfBirth),
      worksSince: new Date(worksSince),
      photoRef,
    };

    await admin.firestore().collection("employees")
        .doc(user.uid).set(employeeData);

    // Upload photo to Firebase Storage
    await admin.storage().bucket().file(photoRef).save(file.buffer, {
      metadata: {contentType: file.mimetype},
    });

    res.status(200).send("Employee created successfully");
  } catch (error) {
    console.error("Error creating employee:", error);
    res.status(500).send("Internal Server Error");
  }
});

app.put("/employees", async (req, res) => {
  try {
    // Access form fields with req.body
    const {userId,
      email,
      password,
      firstname,
      lastname, phoneNumber, role, dateOfBirth, worksSince} = req.body;

    const file = req.files[0];

    if (email != null && password != null) {
      admin.auth().updateUser(userId, {
        email: email,
        password: password,
      });
    }

    if (file != null) {
      const photoRef =
      `employee/photos/${userId}.${file.mimetype.split("/")[1]}`;
      await admin.storage().bucket().file(photoRef).save(file.buffer, {
        metadata: {contentType: file.mimetype},
      });
      await admin.firestore().collection("employees")
          .doc(userId).update({photoRef});
    }
    const employeeData = {
      email,
      firstname,
      lastname,
      phoneNumber,
      role,
      dateOfBirth: new Date(dateOfBirth),
      worksSince: new Date(worksSince),
    };

    await admin.firestore().collection("employees")
        .doc(userId).update(employeeData);

    // Upload photo to Firebase Storage

    res.status(200).send("Employee updated successfully");
  } catch (error) {
    console.error("Error updating employee:", error);
    res.status(500).send("Internal Server Error");
  }
});

app.get("/hello", async (req, res) => {
  res.send(200, "Hello");
});

exports.apis = functions.https.onRequest(app);

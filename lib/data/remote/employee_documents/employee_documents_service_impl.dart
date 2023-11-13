import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:industria/core/constants/firestore_collections.dart';
import 'package:industria/data/remote/employee_documents/employee_documents_service_contract.dart';
import 'package:industria/domain/entities/employee_document/employee_document.dart';
import 'package:mime_type/mime_type.dart';

import '../../../core/constants/exceptions.dart';

class EmployeeDocumentsServiceImpl implements EmployeeDocumentsService {
  final FirebaseFirestore db;
  final FirebaseStorage storage;

  @override
  Future<void> createDocument(
      {required String name,
      required String filename,
      required List<int> bytes,
      required String employeeUid}) async {
    final doc = db
        .collection(FirestoreCollections.employees)
        .doc(employeeUid)
        .collection(FirestoreCollections.documents)
        .doc();
    final documentExists = (await db
                .collection(FirestoreCollections.employees)
                .doc(employeeUid)
                .collection(FirestoreCollections.documents)
                .where("name", isEqualTo: name)
                .get())
            .size !=
        0;
    if (documentExists) {
      throw BadRequestException(
          message: "Document with such name already exists");
    }
    final storageRefPath =
        "employee/documents/$name.${filename.split(".").last}";
    final storageRef = storage.ref(storageRefPath);
    await storageRef.putData(
        Uint8List.fromList(bytes),
        SettableMetadata(
            contentType: mimeFromExtension(filename.split(".").last)));
    await doc.set({
      "name": name,
      "id": doc.id,
      "createdAt": FieldValue.serverTimestamp(),
      "location": storageRefPath
    });
  }

  @override
  Future<void> deleteDocuments(
      {required List<String> ids, required String employeeUid}) {
    return db.runTransaction((transaction) async {
      for (var uid in ids) {
        var docRef = db
            .collection(FirestoreCollections.employees)
            .doc(employeeUid)
            .collection(FirestoreCollections.documents)
            .doc(uid);
        transaction.delete(docRef);
      }
    });
  }

  @override
  Future<List<EmployeeDocument>> getEmployeeDocuments(
      {required String employeeUid}) async {
    final documentsSnapshots = await db
        .collection(FirestoreCollections.employees)
        .doc(employeeUid)
        .collection(FirestoreCollections.documents)
        .orderBy("createdAt", descending: true)
        .get();
    return documentsSnapshots.docs
        .map((e) => EmployeeDocument.fromJson(e.data()))
        .toList();
  }

  EmployeeDocumentsServiceImpl({
    required this.db,
    required this.storage,
  });
}

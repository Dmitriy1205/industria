import 'dart:html';
import 'dart:typed_data';

import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:industria/core/constants/exceptions.dart';
import 'package:industria/core/constants/firestore_collections.dart';
import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/data/remote/admin_company/admin_company_service_contract.dart';
import 'package:industria/domain/entities/company/company.dart';
import 'package:mime_type/mime_type.dart';

class AdminCompanyServiceImpl implements AdminCompanyService {
  final FirebaseFirestore db;
  final Algolia algolia;
  final FirebaseStorage storage;

  @override
  Future<void> createCompany(
      {required String companyName,
      required String photoName,
      required List<int> photoBytes}) async {
    final doc = db.collection(FirestoreCollections.companies).doc();
    final companyExists = (await db
                .collection(FirestoreCollections.companies)
                .where("name", isEqualTo: companyName)
                .get())
            .size !=
        0;
    if (companyExists) {
      throw BadRequestException(
          message: "Company with such name already exists");
    }
    final storageRefPath =
        "companies/pictures/${doc.id}.${photoName.split(".").last}";
    final storageRef = storage.ref(storageRefPath);
    await storageRef.putData(
        Uint8List.fromList(photoBytes),
        SettableMetadata(
            contentType: mimeFromExtension(photoName.split(".").last)));
    await doc.set({
      "name": companyName,
      "id": doc.id,
      "createdAt": FieldValue.serverTimestamp(),
      "logo": storageRefPath
    });
  }

  @override
  Future<void> deleteCompany({required String companyUid}) {
    return db
        .collection(FirestoreCollections.companies)
        .doc(companyUid)
        .delete();
  }

  @override
  Future<Company?> getCompanyById(String companyId) async {
    final snapshot = await db
        .collection(FirestoreCollections.companies)
        .doc(companyId)
        .get();
    if (snapshot.exists) {
      return Company.fromJson(snapshot.data()!);
    } else {
      return null;
    }
  }

  @override
  Future<TableData<List<Company>>> listCompanies(
      {required int page,
      required int elementsPerPage,
      required String searchTerm}) async {
    final index = algolia.index("dev_companies");
    AlgoliaQuery currentQuery = index.query(searchTerm);
    currentQuery = currentQuery.setHitsPerPage(elementsPerPage).setPage(page);
    final objects = await currentQuery.getObjects();
    final companies =
        objects.hits.map((e) => Company.fromJson(e.data)).toList();
    return TableData(
        numberOfPages: objects.nbPages,
        totalElementCounts: objects.nbHits,
        currentPage: objects.page,
        element: companies);
  }

  @override
  Future<void> updateCompany(
      {required String uid,
      required String companyName,
      required String? photoName,
      required List<int>? photoBytes}) async {
    final doc = db.collection(FirestoreCollections.companies).doc(uid);
    final companyExists = (await db
                .collection(FirestoreCollections.companies)
                .where("name", isEqualTo: companyName)
                .get())
            .size !=
        0;
    final oldCompanyName = Company.fromJson(
            (await db.collection(FirestoreCollections.companies).doc(uid).get())
                .data()!)
        .name;
    if (companyExists && oldCompanyName != companyName) {
      throw BadRequestException(
          message: "Company with such name already exists");
    }
    String? storageRefPath;
    if (photoName != null && photoBytes != null) {
      storageRefPath =
          "companies/pictures/${doc.id}.${photoName.split(".").last}";
      final storageRef = storage.ref(storageRefPath);
      await storageRef.putData(
          Uint8List.fromList(photoBytes),
          SettableMetadata(
              contentType: mimeFromExtension(photoName.split(".").last)));
    }
    await doc.update({"name": companyName, "logo": storageRefPath}
      ..removeWhere((key, value) => value == null));
  }

  const AdminCompanyServiceImpl({
    required this.db,
    required this.algolia,
    required this.storage,
  });
}

import 'dart:typed_data';

import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:industria/core/constants/firestore_collections.dart';
import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/domain/entities/employee/employee.dart';
import 'package:industria/domain/entities/job_offer/job_offer.dart';

import '../../../domain/entities/company/company.dart';
import 'admin_vacancy_service_contract.dart';

class AdminVacancyServiceImpl implements AdminVacancyService {
  final Dio _dio;
  final FirebaseFirestore _db;
  final FirebaseStorage _storage;
  final Algolia _algolia;

  @override
  Future<TableData<List<Employee>>> listVacancy(
      {required int page,
      required int elementsPerPage,
      required String searchTerm}) async {
    try {
      final index = _algolia.index("dev_vac");
      AlgoliaQuery currentQuery = index.query(searchTerm);
      currentQuery = currentQuery.setHitsPerPage(elementsPerPage).setPage(page);
      final objects = await currentQuery.getObjects();
      final employees =
          objects.hits.map((e) => Employee.fromJson(e.data)).toList();
      return TableData(
          numberOfPages: objects.nbPages,
          totalElementCounts: objects.nbHits,
          currentPage: objects.page,
          element: employees);
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  @override
  Future<void> deleteVacancy({required List<String> vacanciesIds}) {
    return _db.runTransaction((transaction) async {
      for (var uid in vacanciesIds) {
        var docRef = _db.collection(FirestoreCollections.jobs).doc(uid);
        transaction.delete(docRef);
      }
    });
  }

  @override
  Future<void> updateVacancy(
      {required String id,
      required String title,
      required Company company,
      required String type,
      required String salary,
      required String currency,
      required String period,
      required String location,
      required String area,
      required String city,
      required String description,
      required List<String> questions}) async {
    final doc = _db.collection(FirestoreCollections.jobs).doc(id);
    final json = JobOffer.firestoreJson(
        docId: doc.id,
        company: company,
        title: title,
        jobType: type,
        salary: salary,
        currency: currency,
        period: period,
        location: location,
        area: area,
        city: city,
        description: description,
        questions: questions);
    await doc.update(json);
  }

  @override
  Future<void> createVacancy(
      {required String title,
      required Company company,
      required String type,
      required String salary,
      required String currency,
      required String period,
      required String location,
      required String area,
      required String city,
      required String description,
      required List<String> questions}) async {
    final doc = _db.collection(FirestoreCollections.jobs).doc();
    final json = {
      'title': title,
      'company': company,
      'type': type,
      'salary': salary,
      'currency': currency,
      'period': period,
      'location': location,
      'area': area,
      'city': city,
      'description': description,
      'createdAt': DateTime.now().toUtc().toIso8601String(),
      'questions': questions,
    };
    await doc.set(json);
  }

  @override
  Future<void> createCompany(
      {required String companyName,
      required String photoName,
      required List<int> photoBytes}) async {
    final doc = _db.collection(FirestoreCollections.companies).doc();
    final storageRefPath =
        "companies/pictures/${doc.id}.${photoName.split(".").last}";
    final storageRef = _storage.ref(storageRefPath);
    await storageRef.putData(Uint8List.fromList(photoBytes));
    await doc.set({"name": companyName, "id": doc.id, "logo": storageRef});
  }

  @override
  Future<List<Company>> listCompanies({required String searchTerm, required int count}) async{
    final doc = await _db.collection(FirestoreCollections.companies).where('name', isGreaterThanOrEqualTo: searchTerm)
        .where('name', isLessThan: '${searchTerm}z').limit(count).get();
    return doc.docs.map((e) => Company.fromJson(e.data())).toList();
  }

  AdminVacancyServiceImpl({
    required Dio dio,
    required FirebaseFirestore db,
    required FirebaseStorage storage,
    required Algolia algolia,
  })  : _dio = dio,
        _db = db,
        _storage = storage,
        _algolia = algolia;
}

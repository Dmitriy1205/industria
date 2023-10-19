import 'dart:typed_data';

import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:industria/core/constants/firestore_collections.dart';
import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/domain/entities/job_offer/job_offer.dart';
import 'package:industria/domain/entities/vacancy/vacancy.dart';

import '../../../domain/entities/company/company.dart';
import 'admin_vacancy_service_contract.dart';

class AdminVacancyServiceImpl implements AdminVacancyService {
  final Dio _dio;
  final FirebaseFirestore _db;
  final FirebaseStorage _storage;
  final Algolia _algolia;

  @override
  Future<TableData<List<Vacancy>>> listVacancy(
      {required int page,
      required int elementsPerPage,
      required String searchTerm}) async {
    try {
      final index = _algolia.index("dev_jobs");
      AlgoliaQuery currentQuery = index.query(searchTerm);
      currentQuery = currentQuery.setHitsPerPage(elementsPerPage).setPage(page);
      final objects = await currentQuery.getObjects();
      final vacancies =
          objects.hits.map((e) => Vacancy.fromJson(e.data)).toList();
      return TableData(
          numberOfPages: objects.nbPages,
          totalElementCounts: objects.nbHits,
          currentPage: objects.page,
          element: vacancies);
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
    final json = {
      'title': title,
      'company': company.toJson(),
      'companyId': company.id,
      'companyName': company.name,
      'jobType': type,
      'salary': "$salary$currency / ${period.toLowerCase()}",
      'location': location,
      'area': area,
      'city': city,
      'description': description,
      'questions': questions,
    };
    print(json);
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
      'id': doc.id,
      'title': title,
      'company': company.toJson(),
      'companyId': company.id,
      'companyName': company.name,
      'jobType': type,
      'salary': "$salary$currency / ${period.toLowerCase()}",
      'location': location,
      'area': area,
      'city': city,
      'description': description,
      'createdAt': FieldValue.serverTimestamp(),
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
    await doc.set({"name": companyName, "id": doc.id, "createdAt": FieldValue.serverTimestamp(), "logo": storageRefPath});
  }

  @override
  Future<List<Company>> listCompanies() async{
    final doc = await _db.collection(FirestoreCollections.companies).get();
    return doc.docs.map((e) => Company.fromJson(e.data())).toList();
  }

  @override
  Future<Vacancy?> getVacancyById({required String vacancyId}) async{
    final doc = await _db.collection(FirestoreCollections.jobs).doc(vacancyId).get();
    if(doc.exists){
      return Vacancy.fromJson(doc.data()!);
    }else{
      return null;
    }
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

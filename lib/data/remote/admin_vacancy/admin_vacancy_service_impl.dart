import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/domain/entities/employee/employee.dart';

import 'admin_vacancy_service_contract.dart';

class AdminVacancyServiceImpl implements AdminVacancyService {
  final Dio _dio;
  final FirebaseFirestore _db;
  final Algolia _algolia;

  @override
  Future<void> createVacancy(
      {required String title,
      required String type,
      required String description,
      required String location,
      required String salary,
      required List<String> questions}) async {
    final formData = FormData.fromMap({
      'title': title,
      'type': type,
      'description': description,
      'location': location,
      'salary': salary,
      'questions': questions,
      'read': false,
      'createdAt': DateTime.now().toUtc().toIso8601String(),
    });
    await _dio.post(
        "https://us-central1-industria-a338a.cloudfunctions.net/apis/vacancies",
        data: formData);
  }

  @override
  Future<void> deleteVacancy({required String userUid}) {
    return _dio.delete(
        'https://us-central1-industria-a338a.cloudfunctions.net/apis/vacancies',
        queryParameters: {'userId': userUid});
  }

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
  Future<void> updateVacancy(
      {required String userUid,
      required String email,
      required String? password,
      required String firstname,
      required String lastname,
      required String phoneNumber,
      required String role,
      required DateTime dateOfBirth,
      required DateTime worksSince,
      required String? imgFilename,
      required List<int>? imgBytes}) async {
    try {
      final formData = FormData.fromMap({
        'userId': userUid,
        'email': email,
        'password': password,
        'firstname': firstname,
        'lastname': lastname,
        'phoneNumber': phoneNumber,
        'role': role,
        'dateOfBirth': dateOfBirth.toUtc().toIso8601String(),
        'worksSince': worksSince.toUtc().toIso8601String(),
        'file': imgFilename != null && imgBytes != null
            ? MultipartFile.fromBytes(imgBytes, filename: imgFilename)
            : null,
      }..removeWhere((key, value) => value == null));
      print(formData.fields.toString());
      await _dio.put(
          "https://us-central1-industria-a338a.cloudfunctions.net/apis/employees",
          data: formData,
          options: Options(contentType: 'multipart/form-data'));
    } catch (e, stacktrace) {
      print(stacktrace);
      rethrow;
    }
  }

  AdminVacancyServiceImpl({
    required Dio dio,
    required FirebaseFirestore db,
    required Algolia algolia,
  })  : _dio = dio,
        _db = db,
        _algolia = algolia;
}

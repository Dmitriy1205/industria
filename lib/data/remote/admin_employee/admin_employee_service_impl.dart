import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:industria/core/constants/firestore_collections.dart';
import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/data/remote/admin_employee/admin_employee_service_contract.dart';
import 'package:industria/domain/entities/employee/employee.dart';

class AdminEmployeeServiceImpl implements AdminEmployeeService {
  final Dio _dio;
  final FirebaseFirestore _db;
  final Algolia _algolia;

  @override
  Future<void> createEmployee(
      {required String email,
      required String password,
      required String firstname,
      required String lastname,
      required String phoneNumber,
      required String role,
      required DateTime dateOfBirth,
      required DateTime worksSince,
      required String imgFilename,
      required List<int> imgBytes}) async {
    final formData = FormData.fromMap({
      'email': email,
      'password': password,
      'firstname': firstname,
      'lastname': lastname,
      'phoneNumber': phoneNumber,
      'role': role,
      'dateOfBirth': dateOfBirth.toUtc().toIso8601String(),
      'worksSince': worksSince.toUtc().toIso8601String(),
      'file': MultipartFile.fromBytes(imgBytes, filename: imgFilename),
    });
    await _dio.post(
        "https://us-central1-industria-a338a.cloudfunctions.net/apis/employees",
        data: formData);
  }

  @override
  Future<void> deleteEmployee({required String userUid}) {
    return _dio.delete(
        'https://us-central1-industria-a338a.cloudfunctions.net/apis/employees',
        queryParameters: {'userId': userUid});
  }

  @override
  Future<TableData<List<Employee>>> listEmployees(
      {required int page,
      required int elementsPerPage,
      required String searchTerm}) async {
    try {
      final index = _algolia.index("dev_emp");
      AlgoliaQuery currentQuery = index.query(searchTerm);
      currentQuery =
          currentQuery.setHitsPerPage(elementsPerPage).setPage(page);
      final objects = await currentQuery.getObjects();
      final employees = objects.hits.map((e) => Employee.fromJson(e.data)).toList();
      return TableData(numberOfPages: objects.nbPages, totalElementCounts: objects.nbHits, currentPage: objects.page, element: employees);
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  @override
  Future<void> updateEmployee(
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

  @override
  Future<Employee?> getEmployeeById(String employeeId) async{
    final response = await _db.collection(FirestoreCollections.employees).doc(employeeId).get();
    if(response.exists){
      return Employee.fromJson(response.data()!);
    }else{
      return null;
    }
  }

  AdminEmployeeServiceImpl({
    required Dio dio,
    required FirebaseFirestore db,
    required Algolia algolia,
  })  : _dio = dio,
        _db = db,
        _algolia = algolia;
}

import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/data/remote/admin_employee/admin_employee_service_contract.dart';
import 'package:industria/domain/entities/employee/employee.dart';
import 'package:industria/domain/repositories/admin_employee/admin_employee_repository_contract.dart';

import '../../../data/remote/admin_vacancy/admin_vacancy_service_contract.dart';
import 'admin_vacancy_repository_contract.dart';

class AdminVacancyRepositoryImpl implements AdminVacancyRepository {
  final AdminVacancyService _adminVacancyService;

  @override
  Future<void> createVacancy(
      {required String email,
      required String password,
      required String firstname,
      required String lastname,
      required String phoneNumber,
      required String role,
      required DateTime dateOfBirth,
      required DateTime worksSince,
      required String imgFilename,
      required List<int> imgBytes}) {
    return _adminVacancyService.createVacancy(
        email: email,
        password: password,
        firstname: firstname,
        lastname: lastname,
        phoneNumber: phoneNumber,
        role: role,
        dateOfBirth: dateOfBirth,
        worksSince: worksSince,
        imgFilename: imgFilename,
        imgBytes: imgBytes);
  }

  @override
  Future<void> deleteVacancy({required String userUid}) {
    return _adminVacancyService.deleteVacancy(userUid: userUid);
  }

  @override
  Future<TableData<List<Employee>>> listVacancy(
      {required int page,
      required int elementsPerPage,
      required String searchTerm}) {
    return _adminVacancyService.listVacancy(
        page: page, elementsPerPage: elementsPerPage, searchTerm: searchTerm);
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
      required List<int>? imgBytes}) {
    return _adminVacancyService.updateVacancy(
        userUid: userUid,
        email: email,
        password: password,
        firstname: firstname,
        lastname: lastname,
        phoneNumber: phoneNumber,
        role: role,
        dateOfBirth: dateOfBirth,
        worksSince: worksSince,
        imgFilename: imgFilename,
        imgBytes: imgBytes);
  }

  const AdminVacancyRepositoryImpl({
    required AdminVacancyService adminVacancyService,
  }) : _adminVacancyService = adminVacancyService;
}

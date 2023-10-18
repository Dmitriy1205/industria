import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/data/remote/admin_employee/admin_employee_service_contract.dart';
import 'package:industria/domain/entities/company/company.dart';
import 'package:industria/domain/entities/employee/employee.dart';
import 'package:industria/domain/repositories/admin_employee/admin_employee_repository_contract.dart';

import '../../../data/remote/admin_vacancy/admin_vacancy_service_contract.dart';
import 'admin_vacancy_repository_contract.dart';

class AdminVacancyRepositoryImpl implements AdminVacancyRepository {
  final AdminVacancyService _adminVacancyService;


  const AdminVacancyRepositoryImpl({
    required AdminVacancyService adminVacancyService,
  }) : _adminVacancyService = adminVacancyService;

  @override
  Future<void> createCompany({required String companyName, required String photoName, required List<int> photoBytes}) {
    return _adminVacancyService.createCompany(companyName: companyName, photoName: photoName, photoBytes: photoBytes);
  }

  @override
  Future<void> createVacancy({required String title, required Company company, required String type, required String salary, required String currency, required String period, required String location, required String area, required String city, required String description, required List<String> questions}) {
    return _adminVacancyService.createVacancy(title: title, company: company, type: type, salary: salary, currency: currency, period: period, location: location, area: area, city: city, description: description, questions: questions);
  }

  @override
  Future<void> deleteVacancy({required List<String> vacanciesIds}) {
    return _adminVacancyService.deleteVacancy(vacanciesIds: vacanciesIds);
  }

  @override
  Future<List<Company>> listCompanies({required String searchTerm, required int count}) {
    return _adminVacancyService.listCompanies(searchTerm: searchTerm, count: count);
  }

  @override
  Future<TableData<List<Employee>>> listVacancy({required int page, required int elementsPerPage, required String searchTerm}) {
    return _adminVacancyService.listVacancy(page: page, elementsPerPage: elementsPerPage, searchTerm: searchTerm);
  }

  @override
  Future<void> updateVacancy({required String id, required String title, required Company company, required String type, required String salary, required String currency, required String period, required String location, required String area, required String city, required String description, required List<String> questions}) {
    return _adminVacancyService.updateVacancy(id: id, title: title, company: company, type: type, salary: salary, currency: currency, period: period, location: location, area: area, city: city, description: description, questions: questions);
  }
}

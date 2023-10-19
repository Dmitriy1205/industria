import '../../../core/table_data/table_data.dart';
import '../../../domain/entities/company/company.dart';
import '../../../domain/entities/vacancy/vacancy.dart';

abstract class AdminVacancyService{
  Future<void> createVacancy({required String title, required Company company, required String type, required String salary, required String currency, required String period, required String location, required String area, required String city, required String description, required List<String> questions});
  Future<void> updateVacancy({required String id, required String title, required Company company, required String type, required String salary, required String currency, required String period, required String location, required String area, required String city, required String description, required List<String> questions});
  Future<void> deleteVacancy({required List<String> vacanciesIds});
  Future<Vacancy?> getVacancyById({required String vacancyId});
  Future<TableData<List<Vacancy>>> listVacancy({required int page, required int elementsPerPage, required String searchTerm});
  Future<List<Company>> listCompanies();
  Future<void> createCompany({required String companyName, required String photoName, required List<int> photoBytes});
}
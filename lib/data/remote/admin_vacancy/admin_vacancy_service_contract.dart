import '../../../core/table_data/table_data.dart';
import '../../../domain/entities/employee/employee.dart';

abstract class AdminVacancyService{
  Future<void> createVacancy({required String title, required String type, required String description, required String location, required String salary, });
  Future<void> updateVacancy({required String userUid, required String email, required String? password, required String firstname, required String lastname, required String phoneNumber, required String role, required DateTime dateOfBirth, required DateTime worksSince, required String? imgFilename, required List<int>? imgBytes});
  Future<void> deleteVacancy({required String userUid});
  Future<TableData<List<Employee>>> listVacancy({required int page, required int elementsPerPage, required String searchTerm});
}
import '../../../core/table_data/table_data.dart';
import '../../entities/employee/employee.dart';

abstract class AdminEmployeeRepository{
  Future<void> createEmployee({required String email, required String password, required String firstname, required String lastname, required String phoneNumber, required String role, required DateTime dateOfBirth, required DateTime worksSince, required String imgFilename, required List<int> imgBytes});
  Future<void> updateEmployee({required String userUid, required String email, required String? password, required String firstname, required String lastname, required String phoneNumber, required String role, required DateTime dateOfBirth, required DateTime worksSince, required String? imgFilename, required List<int>? imgBytes});
  Future<void> deleteEmployee({required String userUid});
  Future<TableData<List<Employee>>> listEmployees({required int page,
    required int elementsPerPage,
    required String searchTerm});
  Future<Employee?> getEmployeeById(String employeeId);
}
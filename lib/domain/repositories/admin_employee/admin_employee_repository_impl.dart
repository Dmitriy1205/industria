import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/data/remote/admin_employee/admin_employee_service_contract.dart';
import 'package:industria/domain/entities/employee/employee.dart';
import 'package:industria/domain/repositories/admin_employee/admin_employee_repository_contract.dart';

class AdminEmployeeRepositoryImpl implements AdminEmployeeRepository{
  final AdminEmployeeService _adminEmployeeService;
  @override
  Future<void> createEmployee({required String email, required String password, required String firstname, required String lastname, required String phoneNumber, required String role, required DateTime dateOfBirth, required DateTime worksSince, required String imgFilename, required List<int> imgBytes}) {
    return _adminEmployeeService.createEmployee(email: email, password: password, firstname: firstname, lastname: lastname, phoneNumber: phoneNumber, role: role, dateOfBirth: dateOfBirth, worksSince: worksSince, imgFilename: imgFilename, imgBytes: imgBytes);
  }

  @override
  Future<void> deleteEmployee({required String userUid}) {
    return _adminEmployeeService.deleteEmployee(userUid: userUid);
  }

  @override
  Future<TableData<List<Employee>>> listEmployees({required int page,
    required int elementsPerPage,
    required String searchTerm}) {
    return _adminEmployeeService.listEmployees(page: page, elementsPerPage: elementsPerPage, searchTerm: searchTerm);
  }

  @override
  Future<void> updateEmployee({required String userUid, required String email, required String? password, required String firstname, required String lastname, required String phoneNumber, required String role, required DateTime dateOfBirth, required DateTime worksSince, required String? imgFilename, required List<int>? imgBytes}) {
    return _adminEmployeeService.updateEmployee(userUid: userUid, email: email, password: password, firstname: firstname, lastname: lastname, phoneNumber: phoneNumber, role: role, dateOfBirth: dateOfBirth, worksSince: worksSince, imgFilename: imgFilename, imgBytes: imgBytes);
  }

  @override
  Future<Employee?> getEmployeeById(String employeeId) {
    return _adminEmployeeService.getEmployeeById(employeeId);
  }

  const AdminEmployeeRepositoryImpl({
    required AdminEmployeeService adminEmployeeService,
  }) : _adminEmployeeService = adminEmployeeService;

}
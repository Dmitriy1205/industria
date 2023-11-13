import '../../entities/employee_document/employee_document.dart';

abstract class EmployeeDocumentsRepository{
  Future<List<EmployeeDocument>> getEmployeeDocuments({required String employeeUid});
  Future<void> createDocument({required String name, required String filename, required List<int> bytes, required String employeeUid});
  Future<void> deleteDocuments({required List<String> ids,required String employeeUid});
}
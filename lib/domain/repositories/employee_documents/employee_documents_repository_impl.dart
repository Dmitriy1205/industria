import 'package:industria/data/remote/employee_documents/employee_documents_service_contract.dart';
import 'package:industria/domain/entities/employee_document/employee_document.dart';

import 'employee_documents_repository_contract.dart';

class EmployeeDocumentsRepositoryImpl implements EmployeeDocumentsRepository{
  final EmployeeDocumentsService db;

  @override
  Future<void> createDocument({required String name, required String filename, required List<int> bytes, required String employeeUid}) {
    return db.createDocument(name: name, filename: filename, bytes: bytes, employeeUid: employeeUid);
  }

  @override
  Future<void> deleteDocuments({required List<String> ids, required String employeeUid}) {
    return db.deleteDocuments(ids: ids, employeeUid: employeeUid);
  }

  @override
  Future<List<EmployeeDocument>> getEmployeeDocuments({required String employeeUid}) {
    return db.getEmployeeDocuments(employeeUid: employeeUid);
  }

  const EmployeeDocumentsRepositoryImpl({
    required this.db,
  });
}
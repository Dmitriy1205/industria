import 'package:bloc/bloc.dart';
import 'package:industria/domain/entities/employee_document/employee_document.dart';
import 'package:industria/domain/repositories/employee_documents/employee_documents_repository_contract.dart';
import 'package:meta/meta.dart';

class AdminEmployeeDocumentsCubit extends Cubit<List<EmployeeDocument>?> {
  final EmployeeDocumentsRepository employeeDocumentsRepository;
  AdminEmployeeDocumentsCubit({required this.employeeDocumentsRepository}) : super(null);

  Future<void> fetchEmployeeDocuments({required String employeeUid}) async{
    final documents = await employeeDocumentsRepository.getEmployeeDocuments(employeeUid: employeeUid);
    emit(documents);
  }
}

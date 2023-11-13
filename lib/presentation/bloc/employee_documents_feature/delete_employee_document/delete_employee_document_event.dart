part of 'delete_employee_document_bloc.dart';

@freezed
class DeleteEmployeeDocumentEvent with _$DeleteEmployeeDocumentEvent {
  const factory DeleteEmployeeDocumentEvent.deleteDocument({required String employeeUid, required List<String> uids}) = _DeleteDocumentEvent;
}

part of 'create_employee_document_bloc.dart';

@freezed
class CreateEmployeeDocumentEvent with _$CreateEmployeeDocumentEvent {
  const factory CreateEmployeeDocumentEvent.createDocument({
    required String name,
    required String filename,
    required List<int> bytes,
    required String employeeUid}) = _CreateDocumentEvent;
}

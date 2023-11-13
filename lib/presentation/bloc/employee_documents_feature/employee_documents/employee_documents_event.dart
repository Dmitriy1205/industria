part of 'employee_documents_bloc.dart';

@freezed
class EmployeeDocumentsEvent with _$EmployeeDocumentsEvent {
  const factory EmployeeDocumentsEvent.fetchData(
      {required String employeeUid}) = _FetchDataEvent;
}

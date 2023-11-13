part of 'delete_employee_document_bloc.dart';

@freezed
class DeleteEmployeeDocumentState with _$DeleteEmployeeDocumentState {
  const factory DeleteEmployeeDocumentState.initial() = _InitialState;
  const factory DeleteEmployeeDocumentState.loading() = _LoadingState;
  const factory DeleteEmployeeDocumentState.success() = _SuccessState;
  const factory DeleteEmployeeDocumentState.fail() = _FailState;
}

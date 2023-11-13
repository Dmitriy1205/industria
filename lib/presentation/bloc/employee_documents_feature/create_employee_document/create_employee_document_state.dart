part of 'create_employee_document_bloc.dart';

@freezed
class CreateEmployeeDocumentState with _$CreateEmployeeDocumentState {
  const factory CreateEmployeeDocumentState.initial() = _InitialState;
  const factory CreateEmployeeDocumentState.loading() = _LoadingState;
  const factory CreateEmployeeDocumentState.success() = _SuccessState;
  const factory CreateEmployeeDocumentState.fail() = _FailState;
}

part of 'employee_documents_bloc.dart';

@freezed
class EmployeeDocumentsState with _$EmployeeDocumentsState {
  const EmployeeDocumentsState._();

  List<EmployeeDocument> get documents => maybeMap(
      loaded: (state) => state.documents,
      orElse: () => []);

  const factory EmployeeDocumentsState.initial() = _InitialState;
  const factory EmployeeDocumentsState.loaded({required List<EmployeeDocument> documents}) = _LoadedState;
}

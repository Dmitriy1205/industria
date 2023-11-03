part of 'admin_employee_list_bloc.dart';

@freezed
class AdminEmployeeListEvent with _$AdminEmployeeListEvent {
  const factory AdminEmployeeListEvent.fetchData(
      {required int page,
      required int elementsPerPage}) = _FetchInitialDataEvent;

  const factory AdminEmployeeListEvent.changeSearchTerm(
      {required String searchTerm}) = _ChangeSearchTermEvent;
}

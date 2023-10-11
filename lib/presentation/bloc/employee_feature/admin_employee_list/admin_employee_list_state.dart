part of 'admin_employee_list_bloc.dart';

@freezed
class AdminEmployeeListState with _$AdminEmployeeListState {
  const AdminEmployeeListState._();
  TableData<List<Employee>> get tableData => maybeMap(
      loaded: (state) => state.tableData,
      orElse: () => const TableData(totalElementCounts: 0, element: [], numberOfPages: 1, currentPage: 0));

  String get searchTerm => maybeMap(
      loaded: (state) => state.searchTerm,
      orElse: () => "");

  const factory AdminEmployeeListState.initial() = _InitialState;
  const factory AdminEmployeeListState.loaded({required TableData<List<Employee>> tableData, required String searchTerm}) = _LoadedState;
}

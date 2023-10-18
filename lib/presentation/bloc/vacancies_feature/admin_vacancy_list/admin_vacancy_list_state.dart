part of 'admin_vacancy_list_bloc.dart';

@freezed
class AdminVacancyListState with _$AdminVacancyListState {
  const AdminVacancyListState._();
  TableData<List<Employee>> get tableData => maybeMap(
      loaded: (state) => state.tableData,
      orElse: () => const TableData(totalElementCounts: 0, element: [], numberOfPages: 1, currentPage: 0));

  String get searchTerm => maybeMap(
      loaded: (state) => state.searchTerm,
      orElse: () => "");

  const factory AdminVacancyListState.initial() = _InitialState;
  const factory AdminVacancyListState.loaded({required TableData<List<Employee>> tableData, required String searchTerm}) = _LoadedState;
}

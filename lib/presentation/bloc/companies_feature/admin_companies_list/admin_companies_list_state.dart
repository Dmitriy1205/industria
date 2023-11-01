part of 'admin_companies_list_bloc.dart';

@freezed
class AdminCompaniesListState with _$AdminCompaniesListState {
  const AdminCompaniesListState._();
  TableData<List<Company>> get tableData => maybeMap(
      loaded: (state) => state.tableData,
      orElse: () => const TableData(totalElementCounts: 0, element: [], numberOfPages: 1, currentPage: 0));

  String get searchTerm => maybeMap(
      loaded: (state) => state.searchTerm,
      orElse: () => "");

  const factory AdminCompaniesListState.initial() = _InitialState;
  const factory AdminCompaniesListState.loaded({required TableData<List<Company>> tableData, required String searchTerm}) = _LoadedState;
}

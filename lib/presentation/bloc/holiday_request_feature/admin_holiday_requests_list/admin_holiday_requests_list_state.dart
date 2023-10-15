part of 'admin_holiday_requests_list_bloc.dart';

@freezed
class AdminHolidayRequestsListState with _$AdminHolidayRequestsListState {
  const AdminHolidayRequestsListState._();
  TableData<List<HolidayRequest>> get tableData => maybeMap(
      loaded: (state) => state.tableData,
      orElse: () => TableData(totalElementCounts: 0, numberOfPages: 1, currentPage: 0, element: []));

  String get searchTerm => maybeMap(
      loaded: (state) => state.searchTerm,
      orElse: () => "");

  const factory AdminHolidayRequestsListState.initial() = _InitialState;
  const factory AdminHolidayRequestsListState.loaded({required TableData<List<HolidayRequest>> tableData, required String searchTerm}) = _LoadedState;
}

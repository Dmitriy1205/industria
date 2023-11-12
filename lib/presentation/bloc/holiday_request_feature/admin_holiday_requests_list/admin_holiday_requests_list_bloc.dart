import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/core/table_data/table_data.dart';

import '../../../../domain/entities/holiday_request/holiday_request.dart';
import '../../../../domain/repositories/holiday_requests/holiday_requests_repository_contract.dart';

part 'admin_holiday_requests_list_event.dart';

part 'admin_holiday_requests_list_state.dart';

part 'admin_holiday_requests_list_bloc.freezed.dart';

class AdminHolidayRequestsListBloc
    extends Bloc<AdminHolidayRequestsListEvent, AdminHolidayRequestsListState> {
  final HolidayRequestsRepository holidayRequestsRepository;

  AdminHolidayRequestsListBloc({required this.holidayRequestsRepository})
      : super(const AdminHolidayRequestsListState.initial()) {
    on<AdminHolidayRequestsListEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(AdminHolidayRequestsListEvent event,
          Emitter<AdminHolidayRequestsListState> emit) =>
      event.map(
          fetchData: (e) => _fetchData(e, emit),
          changeSearchTerm: (e) => _changeSearchTerm(e, emit),
          replaceHoliday: (e) => _replaceHoliday(e, emit));

  Future<void> _fetchData(_FetchDataEvent event,
      Emitter<AdminHolidayRequestsListState> emit) async {
    final holidayRequests = await holidayRequestsRepository.listHolidayRequests(
        page: event.page,
        elementsPerPage: event.elementsPerPage,
        searchTerm: state.searchTerm, employeeId: event.employeeId);
    emit(AdminHolidayRequestsListState.loaded(
        tableData: holidayRequests, searchTerm: state.searchTerm));
  }

  Future<void> _changeSearchTerm(_ChangeSearchTermEvent event,
      Emitter<AdminHolidayRequestsListState> emit) async {
    emit(AdminHolidayRequestsListState.loaded(
        tableData: state.tableData, searchTerm: event.searchTerm));
    add(AdminHolidayRequestsListEvent.fetchData(page: 0, elementsPerPage: 7));
  }

  Future<void> _replaceHoliday(_ReplaceHolidayEvent event,
      Emitter<AdminHolidayRequestsListState> emit) async {
    final oldElements = state.tableData.element;
    final newElements =
        oldElements.map((e) => event.id == e.id ? event.holiday : e).toList();
    final oldTableData = state.tableData;
    emit(AdminHolidayRequestsListState.loaded(
        tableData: TableData(
            currentPage: oldTableData.currentPage,
            element: newElements,
            numberOfPages: oldTableData.numberOfPages,
            totalElementCounts: oldTableData.totalElementCounts),
        searchTerm: state.searchTerm));
  }
}

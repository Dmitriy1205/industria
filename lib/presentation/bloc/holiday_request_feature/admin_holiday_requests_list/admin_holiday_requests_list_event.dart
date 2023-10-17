part of 'admin_holiday_requests_list_bloc.dart';

@freezed
class AdminHolidayRequestsListEvent with _$AdminHolidayRequestsListEvent {
  const factory AdminHolidayRequestsListEvent.fetchData({required int page, required int elementsPerPage}) = _FetchDataEvent;
  const factory AdminHolidayRequestsListEvent.changeSearchTerm({required String searchTerm}) = _ChangeSearchTermEvent;
  const factory AdminHolidayRequestsListEvent.replaceHoliday({required String id, required HolidayRequest holiday}) = _ReplaceHolidayEvent;
}

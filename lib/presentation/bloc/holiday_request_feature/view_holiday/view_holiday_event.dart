part of 'view_holiday_bloc.dart';

@freezed
class ViewHolidayEvent with _$ViewHolidayEvent {
  const factory ViewHolidayEvent.fetchHolidayById({required String id}) = _FetchHolidayByIdEvent;
  const factory ViewHolidayEvent.changeStatus(
      {required String id, required String status}) = _ChangeStatusEvent;
  const factory ViewHolidayEvent.markAsRead(
      {required String id}) = _MarkAsReadEvent;
}

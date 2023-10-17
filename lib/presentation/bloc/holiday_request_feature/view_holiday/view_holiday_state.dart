part of 'view_holiday_bloc.dart';

@freezed
class ViewHolidayState with _$ViewHolidayState {
  const ViewHolidayState._();

  HolidayRequest? get holiday => maybeMap(
      loaded: (state) => state.holiday,
      changedStatus: (state) => state.holiday,
      markedAsRead: (state) => state.holiday,
      orElse: () => null);

  const factory ViewHolidayState.initial() = _InitialState;
  const factory ViewHolidayState.loaded({required HolidayRequest holiday}) = _LoadedState;
  const factory ViewHolidayState.changedStatus({required HolidayRequest holiday}) = _ChangedStatusState;
  const factory ViewHolidayState.markedAsRead({required HolidayRequest holiday}) = _MarkedAsReadState;
}

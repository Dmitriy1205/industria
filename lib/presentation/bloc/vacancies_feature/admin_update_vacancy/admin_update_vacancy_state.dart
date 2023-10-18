part of 'admin_update_vacancy_bloc.dart';

@freezed
class AdminUpdateVacancyState with _$AdminUpdateVacancyState {
  const factory AdminUpdateVacancyState.initial() = _InitialState;
  const factory AdminUpdateVacancyState.loading() = _LoadingState;
  const factory AdminUpdateVacancyState.success() = _SuccessState;
  const factory AdminUpdateVacancyState.fail() = _Failtate;
}

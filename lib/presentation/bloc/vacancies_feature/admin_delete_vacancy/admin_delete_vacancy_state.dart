part of 'admin_delete_vacancy_bloc.dart';

@freezed
class AdminDeleteVacancyState with _$AdminDeleteVacancyState {
  const factory AdminDeleteVacancyState.initial() = _InitialState;
  const factory AdminDeleteVacancyState.loading() = _LoadingState;
  const factory AdminDeleteVacancyState.success() = _SuccessState;
  const factory AdminDeleteVacancyState.fail() = _FailState;
}

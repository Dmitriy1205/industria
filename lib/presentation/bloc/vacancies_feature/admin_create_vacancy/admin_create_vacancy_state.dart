part of 'admin_create_vacancy_bloc.dart';

@freezed
class AdminCreateVacancyState with _$AdminCreateVacancyState {
  const factory AdminCreateVacancyState.initial() = _InitialState;
  const factory AdminCreateVacancyState.loading() = _LoadingState;
  const factory AdminCreateVacancyState.success() = _SuccessState;
  const factory AdminCreateVacancyState.fail() = _FailState;
}

part of 'job_application_bloc.dart';

@freezed
class JobApplicationState with _$JobApplicationState {
  const factory JobApplicationState.initial() = _InitialState;
  const factory JobApplicationState.loading() = _LoadingState;
  const factory JobApplicationState.error() = _ErrorState;
  const factory JobApplicationState.success() = _SuccessState;
}

part of 'view_job_application_bloc.dart';

@freezed
class ViewJobApplicationState with _$ViewJobApplicationState {
  const ViewJobApplicationState._();

  JobApplication? get jobApplication => maybeMap(
      loaded: (state) => state.jobApplication,
      changedStatus: (state) => state.jobApplication,
      markedAsRead: (state) => state.jobApplication,
      orElse: () => null);

  const factory ViewJobApplicationState.initial() = _InitialState;
  const factory ViewJobApplicationState.loaded({required JobApplication jobApplication}) = _LoadedState;
  const factory ViewJobApplicationState.changedStatus({required JobApplication jobApplication}) = _ChangedStatusState;
  const factory ViewJobApplicationState.markedAsRead({required JobApplication jobApplication}) = _MarkedAsReadState;
}

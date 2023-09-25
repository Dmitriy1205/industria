part of 'jobs_bloc.dart';

@freezed
class JobsEvent with _$JobsEvent {
  const factory JobsEvent.fetchJobs({required JobFilters filter}) = _FetchJobsEvent;
  const factory JobsEvent.changeSearchQuery({required String query}) = _ChangeSearchQueryEvent;
}

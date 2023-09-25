part of 'jobs_bloc.dart';

@freezed
class JobsEvent with _$JobsEvent {
  const factory JobsEvent.fetchJobs({required JobFilters filter}) = _FetchJobsEvent;
  const factory JobsEvent.search({required String query, required String? city}) = _SearchEvent;
  const factory JobsEvent.applyFilters({required List<String>? types, required String? area}) = _ApplyFiltersEvent;
  const factory JobsEvent.resetFilters() = _ResetFiltersEvent;
}

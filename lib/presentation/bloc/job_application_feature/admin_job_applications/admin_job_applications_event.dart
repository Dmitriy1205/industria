part of 'admin_job_applications_bloc.dart';

@freezed
class AdminJobApplicationsEvent with _$AdminJobApplicationsEvent {
  const factory AdminJobApplicationsEvent.fetchJobApplications({required int page, required int elementsPerPage}) = _FetchJobApplicationsEvent;
  const factory AdminJobApplicationsEvent.changeSearchTerm({required String searchTerm}) = _ChangeSearchTermEvent;
  const factory AdminJobApplicationsEvent.replaceJobApplication({required String id, required JobApplication jobApplication}) = _ReplaceJobApplicationEvent;
}

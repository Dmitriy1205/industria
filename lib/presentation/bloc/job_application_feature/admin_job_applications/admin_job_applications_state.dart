part of 'admin_job_applications_bloc.dart';

@freezed
class AdminJobApplicationsState with _$AdminJobApplicationsState {
  const AdminJobApplicationsState._();

  TableData<List<JobApplication>> get tableData => maybeMap(orElse: () => const TableData(totalElementCounts: 0, numberOfPages: 1, currentPage: 0, element: []));

  String get searchTerm => maybeMap(
      loaded: (state) => state.searchTerm,
      orElse: () => "");

  const factory AdminJobApplicationsState.initial() = _InitialState;
  const factory AdminJobApplicationsState.loaded({required TableData<List<JobApplication>> tableData, required String searchTerm}) = _LoadedState;
}

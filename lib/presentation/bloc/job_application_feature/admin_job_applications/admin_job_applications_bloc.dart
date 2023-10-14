import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/core/table_data/table_data.dart';

import '../../../../domain/entities/job_application/job_application.dart';
import '../../../../domain/repositories/job_application/job_application_repository_contract.dart';

part 'admin_job_applications_event.dart';

part 'admin_job_applications_state.dart';

part 'admin_job_applications_bloc.freezed.dart';

class AdminJobApplicationsBloc
    extends Bloc<AdminJobApplicationsEvent, AdminJobApplicationsState> {
  final JobApplicationRepository jobApplicationRepository;

  AdminJobApplicationsBloc({required this.jobApplicationRepository})
      : super(const AdminJobApplicationsState.initial()) {
    on<AdminJobApplicationsEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(AdminJobApplicationsEvent event,
      Emitter<AdminJobApplicationsState> emit) =>
      event.map(
          replaceJobApplication: (e) => _replaceJobApplication(e, emit),
          fetchJobApplications: (e) => _fetchJobApplications(e, emit),
          changeSearchTerm: (e) => _changeSearchTerm(e, emit));

  Future<void> _fetchJobApplications(_FetchJobApplicationsEvent event,
      Emitter<AdminJobApplicationsState> emit) async {
    final jobApplications = await jobApplicationRepository.listJobApplications(
        page: event.page,
        searchTerm: state.searchTerm,
        elementsPerPage: event.elementsPerPage);
    emit(AdminJobApplicationsState.loaded(
        tableData: jobApplications, searchTerm: state.searchTerm));
  }

  Future<void> _replaceJobApplication(_ReplaceJobApplicationEvent event,
      Emitter<AdminJobApplicationsState> emit) async{
    final oldElements = state.tableData.element;
    final newElements = oldElements.map((e) =>
    event.id == e.id
        ? event.jobApplication
        : e).toList();
    final oldTableData = state.tableData;
    emit(AdminJobApplicationsState.loaded(tableData: TableData(
        currentPage: oldTableData.currentPage,
        element: newElements,
        numberOfPages: oldTableData.numberOfPages,
        totalElementCounts: oldTableData.totalElementCounts),
        searchTerm: state.searchTerm));
  }

  Future<void> _changeSearchTerm(_ChangeSearchTermEvent event,
      Emitter<AdminJobApplicationsState> emit) async {
    emit(AdminJobApplicationsState.loaded(
        tableData: state.tableData, searchTerm: event.searchTerm));
    add(const AdminJobApplicationsEvent.fetchJobApplications(
        page: 0, elementsPerPage: 7));
  }
}

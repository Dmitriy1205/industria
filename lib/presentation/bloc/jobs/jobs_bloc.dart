import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/domain/entities/job_filters/job_filters.dart';
import 'package:industria/domain/entities/job_offer/job_offer.dart';

import '../../../domain/repositories/job/job_repository_contract.dart';

part 'jobs_event.dart';

part 'jobs_state.dart';

part 'jobs_bloc.freezed.dart';

class JobsBloc extends Bloc<JobsEvent, JobsState> {
  final JobRepository jobRepository;

  JobsBloc({required this.jobRepository}) : super(const JobsState.initial()) {
    on<JobsEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(JobsEvent event, Emitter<JobsState> emit) =>
      event.map(
          fetchJobs: (e) => _fetchJobs(e, emit),
          search: (e) => _search(e, emit),
          applyFilters: (e) => _applyFilters(e, emit),
          resetFilters: (e) => _resetFilters(e, emit));

  Future<void> _fetchJobs(
      _FetchJobsEvent event, Emitter<JobsState> emit) async {
    final jobs = await jobRepository.findJobOffers(filter: event.filter);
    emit(JobsState.loaded(jobs: jobs, filter: event.filter));
  }

  Future<void> _search(_SearchEvent event, Emitter<JobsState> emit) async {
    final filter = JobFilters.initial().copyWith(
        keyword: event.query,
        city: event.city,
        area: state.filter!.area,
        jobTypes: state.filter!.jobTypes);
    final jobs = await jobRepository.findJobOffers(filter: filter);
    emit(JobsState.loaded(jobs: jobs, filter: filter));
  }

  Future<void> _applyFilters(
      _ApplyFiltersEvent event, Emitter<JobsState> emit) async {
    final filter = JobFilters.initial().copyWith(
        keyword: state.filter!.keyword,
        city: state.filter!.city,
        area: event.area,
        jobTypes: event.types);
    final jobs = await jobRepository.findJobOffers(filter: filter);
    emit(JobsState.loaded(jobs: jobs, filter: filter));
  }

  Future<void> _resetFilters(
      _ResetFiltersEvent event, Emitter<JobsState> emit) async {
    final filter = JobFilters.initial();
    final jobs = await jobRepository.findJobOffers(filter: filter);
    emit(JobsState.loaded(jobs: jobs, filter: filter));
  }
}

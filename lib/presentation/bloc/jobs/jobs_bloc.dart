import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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

  Future<void> _mapEventToState(JobsEvent event, Emitter<JobsState> emit) => event.map(
      fetchJobs: (e) => _fetchJobs(e,emit),
      changeSearchQuery: (e) => _changeSearchQuery(e,emit));

  Future<void> _fetchJobs(_FetchJobsEvent event, Emitter<JobsState> emit) async{
    final jobs = await jobRepository.findJobOffers(filter: event.filter);
    emit(JobsState.loaded(jobs: jobs, filter: event.filter));
  }

  Future<void> _changeSearchQuery(_ChangeSearchQueryEvent event, Emitter<JobsState> emit) async{
    final filter = state.filter!.copyWith(keyword: event.query);
    final jobs = await jobRepository.findJobOffers(filter: filter);
    emit(JobsState.loaded(jobs: jobs, filter: filter));
  }
}

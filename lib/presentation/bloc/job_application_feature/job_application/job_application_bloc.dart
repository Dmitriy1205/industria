import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/domain/entities/job_application_request/job_application_request.dart';

import '../../../../domain/repositories/job_application/job_application_repository_contract.dart';

part 'job_application_event.dart';

part 'job_application_state.dart';

part 'job_application_bloc.freezed.dart';

class JobApplicationBloc
    extends Bloc<JobApplicationEvent, JobApplicationState> {
  final JobApplicationRepository jobApplicationRepository;

  JobApplicationBloc({required this.jobApplicationRepository})
      : super(const JobApplicationState.initial()) {
    on<JobApplicationEvent>(_mapEventToState, transformer: droppable());
  }

  Future<void> _mapEventToState(
          JobApplicationEvent event, Emitter<JobApplicationState> emit) =>
      event.map(applyJob: (e) => _applyJob(e, emit));

  Future<void> _applyJob(
      _ApplyJobEvent event, Emitter<JobApplicationState> emit) async {
    emit(JobApplicationState.loading());
    try {
      await jobApplicationRepository.applyForJob(
          jobApplication: event.jobApplicationRequest);
      emit(JobApplicationState.success());
      await Future.delayed(Duration(seconds: 3));
      emit(JobApplicationState.initial());
    } on Object {
      emit(JobApplicationState.error());
      await Future.delayed(Duration(seconds: 3));
      emit(JobApplicationState.initial());
    }
  }
}

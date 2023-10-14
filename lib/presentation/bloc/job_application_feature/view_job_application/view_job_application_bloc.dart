import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/domain/entities/job_application/job_application.dart';

import '../../../../domain/repositories/job_application/job_application_repository_contract.dart';

part 'view_job_application_event.dart';

part 'view_job_application_state.dart';

part 'view_job_application_bloc.freezed.dart';

class ViewJobApplicationBloc
    extends Bloc<ViewJobApplicationEvent, ViewJobApplicationState> {
  final JobApplicationRepository jobApplicationRepository;

  ViewJobApplicationBloc({required this.jobApplicationRepository})
      : super(const ViewJobApplicationState.initial()) {
    on<ViewJobApplicationEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(ViewJobApplicationEvent event,
          Emitter<ViewJobApplicationState> emit) =>
      event.map(
          markAsRead: (e) => _markAsRead(e, emit),
          fetchJobApplicationById: (e) => _fetchJobApplicationById(e,emit),
          changeStatus: (e) => _changeStatus(e,emit));
  
  Future<void> _fetchJobApplicationById(_FetchJobApplicationByIdEvent event, Emitter<ViewJobApplicationState> emit) async{
    final jobApplication = await jobApplicationRepository.getJobApplicationById(id: event.id);
    if(!jobApplication!.read){
      await jobApplicationRepository.markedAsRead(id: event.id);
      emit(ViewJobApplicationState.markedAsRead(jobApplication: jobApplication.copyWith.call(read: true)));
    }
    emit(ViewJobApplicationState.loaded(jobApplication: jobApplication));
  }
  Future<void> _changeStatus(_ChangeStatusEvent event, Emitter<ViewJobApplicationState> emit) async{
    await jobApplicationRepository.setJobApplicationsStatus(id: event.id, status: event.status);
    emit(ViewJobApplicationState.changedStatus(jobApplication: state.jobApplication!.copyWith.call(status: event.status)));
  }

  Future<void> _markAsRead(_MarkAsReadEvent event, Emitter<ViewJobApplicationState> emit) async{
    await jobApplicationRepository.markedAsRead(id: event.id);
    emit(ViewJobApplicationState.markedAsRead(jobApplication: state.jobApplication!.copyWith.call(read: true)));
  }
}

part of 'job_application_bloc.dart';

@freezed
class JobApplicationEvent with _$JobApplicationEvent {
  const factory JobApplicationEvent.applyJob({required JobApplicationRequest jobApplicationRequest}) = _ApplyJobEvent;
}

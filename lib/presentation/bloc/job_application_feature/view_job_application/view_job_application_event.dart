part of 'view_job_application_bloc.dart';

@freezed
class ViewJobApplicationEvent with _$ViewJobApplicationEvent {
  const factory ViewJobApplicationEvent.fetchJobApplicationById({required String id}) = _FetchJobApplicationByIdEvent;
  const factory ViewJobApplicationEvent.changeStatus(
      {required String id, required String status}) = _ChangeStatusEvent;
  const factory ViewJobApplicationEvent.markAsRead(
      {required String id}) = _MarkAsReadEvent;
}

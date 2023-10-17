part of 'admin_delete_feedback_bloc.dart';

@freezed
class AdminDeleteFeedbackEvent with _$AdminDeleteFeedbackEvent {
  const factory AdminDeleteFeedbackEvent.deleteFeedback(
      {required List<Feedback> feedbackId}) = _DeleteFeedbackEvent;
}

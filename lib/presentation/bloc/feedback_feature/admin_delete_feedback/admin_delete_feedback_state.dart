part of 'admin_delete_feedback_bloc.dart';

@freezed
class AdminDeleteFeedbackState with _$AdminDeleteFeedbackState {
  const factory AdminDeleteFeedbackState.initial() = _InitialState;
  const factory AdminDeleteFeedbackState.loading() = _LoadingState;
  const factory AdminDeleteFeedbackState.success() = _SuccessState;
  const factory AdminDeleteFeedbackState.fail() = _FailState;
}

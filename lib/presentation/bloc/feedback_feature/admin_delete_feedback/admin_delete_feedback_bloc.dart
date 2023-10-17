import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/domain/entities/feedback/feedback.dart';

import '../../../../domain/repositories/admin_feedback/admin_feedback_repository_contract.dart';

part 'admin_delete_feedback_event.dart';

part 'admin_delete_feedback_state.dart';

part 'admin_delete_feedback_bloc.freezed.dart';

class AdminDeleteFeedbackBloc
    extends Bloc<AdminDeleteFeedbackEvent, AdminDeleteFeedbackState> {
  final AdminFeedbackRepository _adminFeedbackRepository;

  AdminDeleteFeedbackBloc(
      {required AdminFeedbackRepository adminFeedbackRepository})
      : _adminFeedbackRepository = adminFeedbackRepository,
        super(const AdminDeleteFeedbackState.initial()) {
    on<AdminDeleteFeedbackEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(AdminDeleteFeedbackEvent event,
          Emitter<AdminDeleteFeedbackState> emit) =>
      event.map(deleteFeedback: (e) => _deleteFeedback(e, emit));

  Future<void> _deleteFeedback(_DeleteFeedbackEvent event,
      Emitter<AdminDeleteFeedbackState> emit) async {
    emit(const AdminDeleteFeedbackState.loading());
    try {
      await _adminFeedbackRepository.deleteFeedback(
          feedbackId: event.feedbackId);
      emit(const AdminDeleteFeedbackState.success());
      emit(const AdminDeleteFeedbackState.initial());
    } catch (e) {
      emit(const AdminDeleteFeedbackState.fail());
      emit(const AdminDeleteFeedbackState.initial());
    }
  }
}

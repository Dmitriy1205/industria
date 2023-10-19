import 'package:bloc/bloc.dart';
import 'package:industria/domain/entities/feedback/feedback.dart';
import 'package:meta/meta.dart';

import '../../../../domain/repositories/admin_feedback/admin_feedback_repository_contract.dart';

class AdminViewFeedbackCubit extends Cubit<Feedback?> {
  final AdminFeedbackRepository adminFeedbackRepository;
  AdminViewFeedbackCubit({required this.adminFeedbackRepository}) : super(null);

  Future<void> fetchFeedbackById(String id) async{
    final feedback = await adminFeedbackRepository.getFeedbackById(id: id);
    emit(feedback);
  }
}

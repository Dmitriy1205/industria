import '../../../core/table_data/table_data.dart';
import '../../../domain/entities/feedback/feedback.dart';

abstract class AdminFeedbackService {
  Future<void> deleteFeedback({required List<Feedback> feedbackId});

  Future<Feedback?> getFeedbackById({required String id});

  Future<TableData<List<Feedback>>> listFeedbacks(
      {required int page,
      required int elementsPerPage,
      required String searchTerm});
}

import '../../../core/table_data/table_data.dart';
import '../../../domain/entities/feedback/feedback.dart';

abstract class AdminFeedbackService {
  Future<void> deleteFeedback({required String userUid});

  Future<TableData<List<Feedback>>> listFeedbacks(
      {required int page,
      required int elementsPerPage,
      required String searchTerm});
}

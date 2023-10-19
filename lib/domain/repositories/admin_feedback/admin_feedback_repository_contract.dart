import 'package:industria/domain/entities/feedback/feedback.dart';

import '../../../core/table_data/table_data.dart';

abstract class AdminFeedbackRepository {
  Future<void> deleteFeedback({required List<Feedback> feedbackId});

  Future<Feedback?> getFeedbackById({required String id});

  Future<TableData<List<Feedback>>> listFeedbacks(
      {required int page,
      required int elementsPerPage,
      required String searchTerm});
}

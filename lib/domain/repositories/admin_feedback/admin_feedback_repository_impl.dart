import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/data/remote/admin_employee/admin_employee_service_contract.dart';
import 'package:industria/domain/entities/employee/employee.dart';
import 'package:industria/domain/repositories/admin_employee/admin_employee_repository_contract.dart';

import '../../../data/remote/admin_feedback/admin_feedback_service_contract.dart';
import '../../entities/feedback/feedback.dart';
import 'admin_feedback_repository_contract.dart';

class AdminFeedbackRepositoryImpl implements AdminFeedbackRepository {
  final AdminFeedbackService _adminFeedbackService;

  @override
  Future<void> deleteFeedback({required List<Feedback> feedbackId}) {
    return _adminFeedbackService.deleteFeedback(feedbackId: feedbackId);
  }

  @override
  Future<TableData<List<Feedback>>> listFeedbacks(
      {required int page,
      required int elementsPerPage,
      required String searchTerm}) {
    return _adminFeedbackService.listFeedbacks(
        page: page, elementsPerPage: elementsPerPage, searchTerm: searchTerm);
  }

  const AdminFeedbackRepositoryImpl({
    required AdminFeedbackService adminFeedbackService,
  }) : _adminFeedbackService = adminFeedbackService;
}

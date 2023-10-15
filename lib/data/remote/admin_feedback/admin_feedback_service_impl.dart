import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:industria/core/constants/firestore_collections.dart';
import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/data/remote/admin_employee/admin_employee_service_contract.dart';
import 'package:industria/domain/entities/employee/employee.dart';
import 'package:industria/domain/entities/feedback/feedback.dart';

import 'admin_feedback_service_contract.dart';

class AdminFeedbackServiceImpl implements AdminFeedbackService {
  final Dio _dio;
  final FirebaseFirestore _db;
  final Algolia _algolia;


  @override
  Future<void> deleteFeedback({required String userUid}) {
    return _dio.delete(
        'https://us-central1-industria-a338a.cloudfunctions.net/apis/contact_requests',
        queryParameters: {'userId': userUid});
  }

  @override
  Future<TableData<List<Feedback>>> listFeedbacks(
      {required int page,
        required int elementsPerPage,
        required String searchTerm}) async {
    try {
      final index = _algolia.index("dev_feedbacks");
      AlgoliaQuery currentQuery = index.query(searchTerm);
      currentQuery =
          currentQuery.setHitsPerPage(elementsPerPage).setPage(page);
      final objects = await currentQuery.getObjects();
      final feedbacks = objects.hits.map((e) => Feedback.fromJson(e.data)).toList();
      return TableData(numberOfPages: objects.nbPages, totalElementCounts: objects.nbHits, currentPage: objects.page, element: feedbacks);
    } catch (e) {
      print(e);
      rethrow;
    }
  }


  AdminFeedbackServiceImpl({
    required Dio dio,
    required FirebaseFirestore db,
    required Algolia algolia,
  })  : _dio = dio,
        _db = db,
        _algolia = algolia;
}

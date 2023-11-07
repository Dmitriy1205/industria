import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:industria/data/remote/holiday_requests/holiday_requests_service_contract.dart';
import 'package:industria/domain/entities/holiday_request/holiday_request.dart';
import 'package:industria/domain/models/holiday_request_model.dart';

import '../../../core/constants/firestore_collections.dart';
import '../../../core/table_data/table_data.dart';

class HolidayRequestsServiceImpl implements HolidayRequestsService {
  final Algolia algolia;
  final FirebaseFirestore db;

  @override
  Future<TableData<List<HolidayRequest>>> listHolidayRequests(
      {required int page,
      required int elementsPerPage,
      required String searchTerm,
      String? employeeId}) async {
    final index = algolia.index("dev_holidays");
    AlgoliaQuerySnapshot objects;
    final holidays;

    AlgoliaQuery currentQuery = index.query(searchTerm);
    currentQuery = currentQuery.setHitsPerPage(elementsPerPage).setPage(page);
    objects = await currentQuery.getObjects();
    print('employeeId ${employeeId}');

    if (employeeId != null || employeeId!.isNotEmpty) {

      currentQuery = currentQuery.filters('employeeId:$employeeId');
      objects = await currentQuery.getObjects();
      holidays =
          objects.hits.map((e) => HolidayRequest.fromJson(e.data)).toList();
    }
   else  {
      holidays =
          objects.hits.map((e) => HolidayRequest.fromJson(e.data)).toList();
    }
   print('holidays ${holidays.length}');

    return TableData(
        numberOfPages: objects.nbPages,
        totalElementCounts: objects.nbHits,
        currentPage: objects.page,
        element: holidays);
  }

  // @override
  // Future<TableData<List<HolidayRequest>>> listHolidayRequests(
  //     {required int page,
  //     required int elementsPerPage,
  //     required String searchTerm,
  //     String? employeeId}) async {
  //   final index = algolia.index("dev_holidays");
  //   AlgoliaQuery currentQuery = index.facetFilter('employeeId:8SjsDfQyNQYy8w09Yeectvh4RT73');
  // .query(searchTerm);

  // Assuming you have an 'employeeId' field you want to filter on
  // if (employeeId != null) {
  // final employeeIdFacet = 'employeeId:8SjsDfQyNQYy8w09Yeectvh4RT73';
  // currentQuery = currentQuery.facetFilter(employeeIdFacet);
  // print('currentQuery ${currentQuery}');

  // }

  // currentQuery = currentQuery.setHitsPerPage(elementsPerPage).setPage(page);
  //   final results = await currentQuery.getObjects();
  //   print('results ${results.hits.length}');
  //
  //   final holidays =
  //       results.hits.map((e) => HolidayRequest.fromJson(e.data)).toList();
  //   print('holidays ${holidays.length}');
  //
  //   return TableData(
  //       numberOfPages: results.nbPages,
  //       totalElementCounts: results.nbHits,
  //       currentPage: results.page,
  //       element: holidays);
  // }

  @override
  Future<HolidayRequest?> getHolidayById({required String id}) async {
    final snapshot =
        await db.collection(FirestoreCollections.holidays).doc(id).get();
    if (snapshot.exists) {
      print(snapshot.data());
      return HolidayRequest.fromJson(snapshot.data()!);
    } else {
      return null;
    }
  }

  @override
  Future<void> markedAsRead({required String id}) {
    return db
        .collection(FirestoreCollections.holidays)
        .doc(id)
        .update({"read": true});
  }

  @override
  Future<void> setHolidayStatus({required String id, required String status}) {
    return db
        .collection(FirestoreCollections.holidays)
        .doc(id)
        .update({"status": status});
  }

  HolidayRequestsServiceImpl({
    required this.algolia,
    required this.db,
  });

  @override
  Future<void> createReport({required HolidayRequestModel report}) async {
    final docRef = db.collection(FirestoreCollections.holidays).doc();
    final json = HolidayRequestModel.jsonFromRequest(
        docId: docRef.id,
        holidayRequest: report,
        createdAt: FieldValue.serverTimestamp());
    await docRef.set(json);
  }

  @override
  Future<void> deleteReport({required List<String> ids}) {
    return db.runTransaction((transaction) async {
      final batch = db.batch();

      for (var id in ids) {
        final docRef = db.collection(FirestoreCollections.holidays).doc(id);
        batch.delete(docRef);
      }
      await batch.commit();
    });
  }
}

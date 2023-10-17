import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:industria/core/constants/firestore_collections.dart';
import 'package:industria/data/remote/attendance/attendance_service_contract.dart';

import '../../../domain/entities/attendance/attendance.dart';

class AttendanceServiceImpl implements AttendanceService {
  final FirebaseFirestore db;

  @override
  Future<List<Attendance>> fetchUserAttendanceReports(
      {required String userUid, required int quantity}) async {
    final snapshots = await db
        .collection(FirestoreCollections.employees)
        .doc(userUid)
        .collection(FirestoreCollections.attendances)
        .orderBy("start", descending: true)
        .limit(quantity)
        .get();
    return snapshots.docs.map((e) => Attendance.fromJson(e.data())).toList();
  }

  const AttendanceServiceImpl({
    required this.db,
  });
}

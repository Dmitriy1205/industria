import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:industria/core/constants/firestore_collections.dart';
import 'package:industria/data/remote/attendance_graph/attendance_graph_service_contract.dart';
import 'package:industria/domain/entities/attendance_graph/attendance_graph.dart';

class AttendanceGraphServiceImpl implements AttendanceGraphService {
  final FirebaseFirestore db;

  @override
  Future<AttendanceGraph?> fetchAttendanceGraph(
      {required String userUid, required DateTime date}) async{
    final String docName = _docName(userUid: userUid, date: date);
    final doc = await db.collection(FirestoreCollections.attendanceGraph).doc(docName).get();
    if(doc.exists){
      return AttendanceGraph.fromJson(doc.data()!);
    }else{
      return null;
    }
  }

  @override
  Future<void> saveAttendanceGraph({required AttendanceGraph graph}) async{
    final String docName = _docName(userUid: graph.userId, date: graph.date);
    return db.collection(FirestoreCollections.attendanceGraph).doc(docName).set(graph.toJson());
  }

  String _docName({required String userUid, required DateTime date}) =>
      "$userUid-${date.year}.${date.month}.${date.day}";

  const AttendanceGraphServiceImpl({
    required this.db,
  });
}

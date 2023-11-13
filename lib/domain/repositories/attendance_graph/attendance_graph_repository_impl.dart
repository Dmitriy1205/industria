import 'package:industria/data/remote/attendance_graph/attendance_graph_service_contract.dart';
import 'package:industria/domain/entities/attendance_graph/attendance_graph.dart';
import 'package:industria/domain/repositories/attendance_graph/attendance_graph_repository_contract.dart';

class AttendanceGraphRepositoryImpl implements AttendanceGraphRepository {
  final AttendanceGraphService db;

  @override
  Future<AttendanceGraph?> fetchAttendanceGraph(
          {required String userUid, required DateTime date}) =>
      db.fetchAttendanceGraph(userUid: userUid, date: date);

  @override
  Future<void> saveAttendanceGraph({required AttendanceGraph graph}) =>
      db.saveAttendanceGraph(graph: graph);

  const AttendanceGraphRepositoryImpl({
    required this.db,
  });
}

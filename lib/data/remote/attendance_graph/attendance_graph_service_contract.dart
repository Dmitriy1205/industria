import 'package:industria/domain/entities/attendance_graph/attendance_graph.dart';

abstract class AttendanceGraphService{
  Future<AttendanceGraph?> fetchAttendanceGraph({required String userUid, required DateTime date});
  Future<void> saveAttendanceGraph({required AttendanceGraph graph});
}
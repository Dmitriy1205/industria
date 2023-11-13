import '../../entities/attendance_graph/attendance_graph.dart';

abstract class AttendanceGraphRepository{
  Future<AttendanceGraph?> fetchAttendanceGraph({required String userUid, required DateTime date});
  Future<void> saveAttendanceGraph({required AttendanceGraph graph});
}
import '../../entities/attendance/attendance.dart';

abstract class AttendanceRepository{
  Future<List<Attendance>> fetchUserAttendanceReports({required String userUid, required int quantity});
}
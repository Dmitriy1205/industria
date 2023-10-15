import 'package:industria/domain/entities/attendance/attendance.dart';

abstract class AttendanceService{
  Future<List<Attendance>> fetchUserAttendanceReports({required String userUid, required int quantity});
}
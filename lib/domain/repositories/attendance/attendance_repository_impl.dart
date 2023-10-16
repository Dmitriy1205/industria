import 'package:industria/data/remote/attendance/attendance_service_contract.dart';
import 'package:industria/domain/entities/attendance/attendance.dart';
import 'package:industria/domain/repositories/attendance/attendance_repository_contract.dart';

class AttendanceRepositoryImpl implements AttendanceRepository{
  final AttendanceService db;

  @override
  Future<List<Attendance>> fetchUserAttendanceReports({required String userUid, required int quantity}) {
    return db.fetchUserAttendanceReports(userUid: userUid, quantity: quantity);
  }

  const AttendanceRepositoryImpl({
    required this.db,
  });
}
import 'package:bloc/bloc.dart';
import 'package:industria/domain/entities/attendance/attendance.dart';
import 'package:meta/meta.dart';

import '../../../domain/repositories/attendance/attendance_repository_contract.dart';

class EmployeeWeeklyReportCubit extends Cubit<Attendance?> {
  final AttendanceRepository attendanceRepository;
  EmployeeWeeklyReportCubit({required this.attendanceRepository}) : super(null);

  Future<void> fetchAttendance({required String employeeUid}) async{
    final attendances = await attendanceRepository.fetchUserAttendanceReports(userUid: employeeUid, quantity: 1);
    emit(attendances.firstOrNull);
  }
}

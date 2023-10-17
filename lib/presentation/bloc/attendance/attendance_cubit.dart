import 'package:bloc/bloc.dart';

import '../../../domain/entities/attendance/attendance.dart';
import '../../../domain/repositories/attendance/attendance_repository_contract.dart';

class AttendanceCubit extends Cubit<List<Attendance>?> {
  final AttendanceRepository attendanceRepository;
  AttendanceCubit({required this.attendanceRepository}) : super(null);

  void fetchUserAttendanceReports({required String userUid}) async{
    final attendanceReports = await attendanceRepository.fetchUserAttendanceReports(userUid: userUid, quantity: 10);
    emit(attendanceReports);
  }
}

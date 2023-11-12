part of 'attendance_graph_bloc.dart';

@freezed
class AttendanceGraphEvent with _$AttendanceGraphEvent {
  const factory AttendanceGraphEvent.fetchAttendanceGraph({required DateTime date, required String userUid}) = _FetchAttendanceGraphEvent;
  const factory AttendanceGraphEvent.startWork({required DateTime date, required String userUid}) = _StartWorkEvent;
  const factory AttendanceGraphEvent.startBreak({required DateTime date}) = _StartBreakEvent;
  const factory AttendanceGraphEvent.stopBreak({required DateTime date}) = _StopBreakEvent;
  const factory AttendanceGraphEvent.finishWork({required DateTime date, required String comment}) = _FinishWorkEvent;
}

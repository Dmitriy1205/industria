import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:industria/core/utils/firebase_timestamp_converters.dart';
import 'package:industria/domain/entities/attendance_periods/attendance_periods.dart';

part 'attendance.freezed.dart';
part 'attendance.g.dart';

@freezed
class Attendance with _$Attendance {
  const Attendance._();

  num get cleanWeekWork => [periods.mon, periods.tue, periods.wed, periods.thu, periods.fri, periods.sat, periods.sun].fold(0, (a,b) => a + (b?.cleanWork ?? 0));

  const factory Attendance({
    required String employeeId,
    required String employeeName,
    required String employerName,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, toJson: FirebaseTimestampConverters.toTimestamp) required DateTime end,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, toJson: FirebaseTimestampConverters.toTimestamp) required DateTime start,
    required AttendancePeriods periods,
  }) = _Attendance;

  factory Attendance.fromJson(Map<String, Object?> json)
      => _$AttendanceFromJson(json);
}
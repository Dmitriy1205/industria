import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:industria/domain/entities/attendance_period/attendance_period.dart';

part 'attendance_periods.freezed.dart';
part 'attendance_periods.g.dart';

@freezed
class AttendancePeriods with _$AttendancePeriods {
  const factory AttendancePeriods({
    AttendancePeriod? mon,
    AttendancePeriod? tue,
    AttendancePeriod? wed,
    AttendancePeriod? thu,
    AttendancePeriod? fri,
    AttendancePeriod? sat,
    AttendancePeriod? sun,
  }) = _AttendancePeriods;

  factory AttendancePeriods.fromJson(Map<String, Object?> json)
      => _$AttendancePeriodsFromJson(json);
}
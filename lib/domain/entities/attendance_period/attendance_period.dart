import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:industria/core/extensions/duration.dart';

import '../../../core/utils/firebase_timestamp_converters.dart';

part 'attendance_period.freezed.dart';
part 'attendance_period.g.dart';

@freezed
class AttendancePeriod with _$AttendancePeriod {
  const AttendancePeriod._();
  num get cleanWork => workTimeEnd.difference(workTimeStart).cleanHours - pause;

  const factory AttendancePeriod({
    required String comment,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, toJson: FirebaseTimestampConverters.toTimestamp) required DateTime date,
    required num pause,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, toJson: FirebaseTimestampConverters.toTimestamp) required DateTime workTimeStart,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, toJson: FirebaseTimestampConverters.toTimestamp) required DateTime workTimeEnd,
  }) = _AttendancePeriod;

  factory AttendancePeriod.fromJson(Map<String, Object?> json)
      => _$AttendancePeriodFromJson(json);
}
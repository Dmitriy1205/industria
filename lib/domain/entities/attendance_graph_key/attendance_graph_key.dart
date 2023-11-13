import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/core/enums/attendance_graph_status.dart';
import 'package:industria/core/utils/firebase_timestamp_converters.dart';

part 'attendance_graph_key.freezed.dart';
part 'attendance_graph_key.g.dart';

@freezed
class AttendanceGraphKey with _$AttendanceGraphKey {
  const factory AttendanceGraphKey({
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, toJson: FirebaseTimestampConverters.toTimestamp) required DateTime mark,
    @JsonKey(fromJson: AttendanceGraphStatus.fromJson, toJson: AttendanceGraphStatus.toJson) required AttendanceGraphStatus status
  }) = _AttendanceGraphKey;

  factory AttendanceGraphKey.fromJson(Map<String, Object?> json)
  => _$AttendanceGraphKeyFromJson(json);
}
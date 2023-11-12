// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_graph_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceGraphKey _$$_AttendanceGraphKeyFromJson(
        Map<String, dynamic> json) =>
    _$_AttendanceGraphKey(
      mark: FirebaseTimestampConverters.fromTimestamp(json['mark']),
      status: AttendanceGraphStatus.fromJson(json['status'] as String),
    );

Map<String, dynamic> _$$_AttendanceGraphKeyToJson(
        _$_AttendanceGraphKey instance) =>
    <String, dynamic>{
      'mark': FirebaseTimestampConverters.toTimestamp(instance.mark),
      'status': AttendanceGraphStatus.toJson(instance.status),
    };

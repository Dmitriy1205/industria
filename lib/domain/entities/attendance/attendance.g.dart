// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Attendance _$$_AttendanceFromJson(Map<String, dynamic> json) =>
    _$_Attendance(
      employeeId: json['employeeId'] as String,
      employeeName: json['employeeName'] as String,
      employerName: json['employerName'] as String,
      end: FirebaseTimestampConverters.fromTimestamp(json['end']),
      start: FirebaseTimestampConverters.fromTimestamp(json['start']),
      periods:
          AttendancePeriods.fromJson(json['periods'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AttendanceToJson(_$_Attendance instance) =>
    <String, dynamic>{
      'employeeId': instance.employeeId,
      'employeeName': instance.employeeName,
      'employerName': instance.employerName,
      'end': FirebaseTimestampConverters.toTimestamp(instance.end),
      'start': FirebaseTimestampConverters.toTimestamp(instance.start),
      'periods': instance.periods,
    };

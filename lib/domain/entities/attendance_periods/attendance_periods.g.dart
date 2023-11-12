// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_periods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendancePeriods _$$_AttendancePeriodsFromJson(Map<String, dynamic> json) =>
    _$_AttendancePeriods(
      mon: json['mon'] == null
          ? null
          : AttendancePeriod.fromJson(json['mon'] as Map<String, dynamic>),
      tue: json['tue'] == null
          ? null
          : AttendancePeriod.fromJson(json['tue'] as Map<String, dynamic>),
      wed: json['wed'] == null
          ? null
          : AttendancePeriod.fromJson(json['wed'] as Map<String, dynamic>),
      thu: json['thu'] == null
          ? null
          : AttendancePeriod.fromJson(json['thu'] as Map<String, dynamic>),
      fri: json['fri'] == null
          ? null
          : AttendancePeriod.fromJson(json['fri'] as Map<String, dynamic>),
      sat: json['sat'] == null
          ? null
          : AttendancePeriod.fromJson(json['sat'] as Map<String, dynamic>),
      sun: json['sun'] == null
          ? null
          : AttendancePeriod.fromJson(json['sun'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AttendancePeriodsToJson(
        _$_AttendancePeriods instance) =>
    <String, dynamic>{
      'mon': instance.mon?.toJson(),
      'tue': instance.tue?.toJson(),
      'wed': instance.wed?.toJson(),
      'thu': instance.thu?.toJson(),
      'fri': instance.fri?.toJson(),
      'sat': instance.sat?.toJson(),
      'sun': instance.sun?.toJson(),
    };

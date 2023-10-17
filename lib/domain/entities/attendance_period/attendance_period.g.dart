// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendancePeriod _$$_AttendancePeriodFromJson(Map<String, dynamic> json) =>
    _$_AttendancePeriod(
      comment: json['comment'] as String,
      date: FirebaseTimestampConverters.fromTimestamp(json['date']),
      pause: json['pause'] as num,
      workTimeStart:
          FirebaseTimestampConverters.fromTimestamp(json['workTimeStart']),
      workTimeEnd:
          FirebaseTimestampConverters.fromTimestamp(json['workTimeEnd']),
    );

Map<String, dynamic> _$$_AttendancePeriodToJson(_$_AttendancePeriod instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'date': FirebaseTimestampConverters.toTimestamp(instance.date),
      'pause': instance.pause,
      'workTimeStart':
          FirebaseTimestampConverters.toTimestamp(instance.workTimeStart),
      'workTimeEnd':
          FirebaseTimestampConverters.toTimestamp(instance.workTimeEnd),
    };

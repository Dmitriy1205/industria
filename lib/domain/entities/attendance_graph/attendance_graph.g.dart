// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_graph.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceGraph _$$_AttendanceGraphFromJson(Map<String, dynamic> json) =>
    _$_AttendanceGraph(
      date: FirebaseTimestampConverters.fromTimestamp(json['date']),
      status: AttendanceGraphStatus.fromJson(json['status'] as String),
      userId: json['userId'] as String,
      totalPause: (json['totalPause'] as num?)?.toDouble() ?? 0.0,
      keys: (json['keys'] as List<dynamic>?)
              ?.map(
                  (e) => AttendanceGraphKey.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      comment: json['comment'] as String? ?? "",
    );

Map<String, dynamic> _$$_AttendanceGraphToJson(_$_AttendanceGraph instance) =>
    <String, dynamic>{
      'date': FirebaseTimestampConverters.toTimestamp(instance.date),
      'status': AttendanceGraphStatus.toJson(instance.status),
      'userId': instance.userId,
      'totalPause': instance.totalPause,
      'keys': instance.keys.map((e) => e.toJson()).toList(),
      'comment': instance.comment,
    };

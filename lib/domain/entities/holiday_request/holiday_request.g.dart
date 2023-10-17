// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HolidayRequest _$$_HolidayRequestFromJson(Map<String, dynamic> json) =>
    _$_HolidayRequest(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      photoRef: json['photoRef'] as String,
      reason: json['reason'] as String,
      id: json['id'] as String,
      employeeId: json['employeeId'] as String,
      createdAt: FirebaseTimestampConverters.fromTimestamp(json['createdAt']),
      unavailableFrom:
          FirebaseTimestampConverters.fromTimestamp(json['unavailableFrom']),
      unavailableTo:
          FirebaseTimestampConverters.fromTimestamp(json['unavailableTo']),
      status: json['status'] as String? ?? "Pending",
      read: json['read'] as bool? ?? false,
    );

Map<String, dynamic> _$$_HolidayRequestToJson(_$_HolidayRequest instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'photoRef': instance.photoRef,
      'reason': instance.reason,
      'id': instance.id,
      'employeeId': instance.employeeId,
      'createdAt': FirebaseTimestampConverters.toTimestamp(instance.createdAt),
      'unavailableFrom':
          FirebaseTimestampConverters.toTimestamp(instance.unavailableFrom),
      'unavailableTo':
          FirebaseTimestampConverters.toTimestamp(instance.unavailableTo),
      'status': instance.status,
      'read': instance.read,
    };

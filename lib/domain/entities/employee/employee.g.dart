// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Employee _$$_EmployeeFromJson(Map<String, dynamic> json) => _$_Employee(
      id: json['id'] as String?,
      email: json['email'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      phoneNumber: json['phoneNumber'] as String,
      role: json['role'] as String,
      dateOfBirth:
          FirebaseTimestampConverters.fromTimestamp(json['dateOfBirth']),
      worksSince: FirebaseTimestampConverters.fromTimestamp(json['worksSince']),
      photoRef: json['photoRef'] as String,
    );

Map<String, dynamic> _$$_EmployeeToJson(_$_Employee instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phoneNumber': instance.phoneNumber,
      'role': instance.role,
      'dateOfBirth':
          FirebaseTimestampConverters.toTimestampString(instance.dateOfBirth),
      'worksSince':
          FirebaseTimestampConverters.toTimestampString(instance.worksSince),
      'photoRef': instance.photoRef,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeDocument _$$_EmployeeDocumentFromJson(Map<String, dynamic> json) =>
    _$_EmployeeDocument(
      id: json['id'] as String,
      name: json['name'] as String,
      location: json['location'] as String,
      createdAt: FirebaseTimestampConverters.fromTimestamp(json['createdAt']),
    );

Map<String, dynamic> _$$_EmployeeDocumentToJson(_$_EmployeeDocument instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'createdAt': FirebaseTimestampConverters.toTimestamp(instance.createdAt),
    };

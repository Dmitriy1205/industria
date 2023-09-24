// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_application_documents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobApplicationDocuments _$$_JobApplicationDocumentsFromJson(
        Map<String, dynamic> json) =>
    _$_JobApplicationDocuments(
      photo: json['photo'] as String,
      cv: json['cv'] as String,
      certificates: (json['certificates'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_JobApplicationDocumentsToJson(
        _$_JobApplicationDocuments instance) =>
    <String, dynamic>{
      'photo': instance.photo,
      'cv': instance.cv,
      'certificates': instance.certificates,
    };

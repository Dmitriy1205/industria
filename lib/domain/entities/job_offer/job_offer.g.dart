// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobOffer _$$_JobOfferFromJson(Map<String, dynamic> json) => _$_JobOffer(
      id: json['id'] as String,
      title: json['title'] as String,
      jobType: json['jobType'] as String,
      companyId: json['companyId'] as String,
      companyName: json['companyName'] as String,
      area: json['area'] as String,
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
      location: json['location'] as String,
      city: json['city'] as String,
      salary: json['salary'] as String,
      description: json['description'] as String,
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdAt: FirebaseTimestampConverters.fromTimestamp(json['createdAt']),
    );

Map<String, dynamic> _$$_JobOfferToJson(_$_JobOffer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'jobType': instance.jobType,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'area': instance.area,
      'company': instance.company,
      'location': instance.location,
      'city': instance.city,
      'salary': instance.salary,
      'description': instance.description,
      'questions': instance.questions,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobApplication _$$_JobApplicationFromJson(Map<String, dynamic> json) =>
    _$_JobApplication(
      id: json['id'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      birthday: FirebaseTimestampConverters.fromTimestamp(json['birthday']),
      citizenship: json['citizenship'] as String,
      gender: json['gender'] as String,
      address: json['address'] as String,
      availableDate:
          FirebaseTimestampConverters.fromTimestamp(json['availableDate']),
      documents: JobApplicationDocuments.fromJson(
          json['documents'] as Map<String, dynamic>),
      createdAt: FirebaseTimestampConverters.fromTimestamp(json['createdAt']),
      companyId: json['companyId'] as String,
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
      jobOfferId: json['jobOfferId'] as String,
      jobOfferName: json['jobOfferName'] as String,
      status: json['status'] as String? ?? "Pending",
      questionAnswers: (json['questionAnswers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      read: json['read'] as bool? ?? false,
    );

Map<String, dynamic> _$$_JobApplicationToJson(_$_JobApplication instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'birthday': FirebaseTimestampConverters.toTimestamp(instance.birthday),
      'citizenship': instance.citizenship,
      'gender': instance.gender,
      'address': instance.address,
      'availableDate':
          FirebaseTimestampConverters.toTimestamp(instance.availableDate),
      'documents': instance.documents.toJson(),
      'companyId': instance.companyId,
      'company': instance.company.toJson(),
      'jobOfferId': instance.jobOfferId,
      'jobOfferName': instance.jobOfferName,
      'status': instance.status,
      'questionAnswers': instance.questionAnswers,
      'read': instance.read,
    };

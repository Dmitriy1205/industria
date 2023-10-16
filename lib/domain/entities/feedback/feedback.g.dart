// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Feedback _$$_FeedbackFromJson(Map<String, dynamic> json) => _$_Feedback(
      id: json['id'] as String?,
      email: json['email'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      phoneNumber: json['phoneNumber'] as String,
      companyName: json['companyName'] as String,
      description: json['description'] as String,
      createdAt: FirebaseTimestampConverters.fromTimestamp(json['createdAt']),
    );

Map<String, dynamic> _$$_FeedbackToJson(_$_Feedback instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phoneNumber': instance.phoneNumber,
      'companyName': instance.companyName,
      'description': instance.description,
      'createdAt':
          FirebaseTimestampConverters.toTimestampString(instance.createdAt),
    };

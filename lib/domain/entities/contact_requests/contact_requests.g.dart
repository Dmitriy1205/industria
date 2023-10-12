// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactRequests _$$_ContactRequestsFromJson(Map<String, dynamic> json) =>
    _$_ContactRequests(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      companyName: json['companyName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      description: json['description'] as String,
      read: json['read'] as bool?,
    );

Map<String, dynamic> _$$_ContactRequestsToJson(_$_ContactRequests instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'companyName': instance.companyName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'description': instance.description,
      'read': instance.read,
    };

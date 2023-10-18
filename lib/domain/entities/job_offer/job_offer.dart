import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:industria/core/utils/firebase_timestamp_converters.dart';

import '../company/company.dart';

part 'job_offer.freezed.dart';
part 'job_offer.g.dart';

@freezed
class JobOffer with _$JobOffer {
  const JobOffer._();

  static Map<String,dynamic> firestoreJson({required String docId, required Company company, required String title, required String jobType, required String salary, required String currency, required String period, required String location, required String area, required String city, required String description, required List<String> questions}){
    return {
      "id": docId,
      "title": title,
      "jobType": jobType,
      "companyId": company.id,
      "companyName": company.name,
      "area": area,
      "company": company.toJson(),
      "location": location,
      "city": city,
      "salary": salary,
      "description": description,
      "questions": questions,
      "createdAt": FieldValue.serverTimestamp()
    };
  }

  const factory JobOffer({
    required String id,
    required String title,
    required String jobType,
    required String companyId,
    required String companyName,
    required String area,
    required Company company,
    required String location,
    required String city,
    required String salary,
    required String description,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, includeToJson: false) required DateTime createdAt,
  }) = _JobOffer;

  factory JobOffer.fromJson(Map<String, Object?> json)
      => _$JobOfferFromJson(json);
}
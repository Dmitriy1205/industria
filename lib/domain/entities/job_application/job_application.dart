import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:industria/core/utils/firebase_timestamp_converters.dart';
import 'package:industria/domain/entities/job_application_documents/job_application_documents.dart';
import 'package:industria/domain/entities/job_application_request/job_application_request.dart';

import '../company/company.dart';

part 'job_application.freezed.dart';
part 'job_application.g.dart';

@freezed
class JobApplication with _$JobApplication {
  const JobApplication._();

  static Map<String,dynamic> jsonFromRequest(
      {required JobApplicationRequest request, required String docId, required String photoPath, required String cvPath, required List<String> certificatesPaths}){
    return {
      "id": docId,
      "firstname": request.firstname,
      "lastname": request.lastname,
      "birthday": FirebaseTimestampConverters.toTimestamp(request.birthday),
      "citizenship": request.citizenship,
      "gender": request.gender,
      "address": request.address,
      "availableDate": FirebaseTimestampConverters.toTimestamp(request.availableDate),
      "documents": {
        "photo": photoPath,
        "cv": cvPath,
        "certificates": certificatesPaths
      },
      "createdAt": FieldValue.serverTimestamp(),
      "companyId": request.company.id,
      "company": request.company.toJson()
    };
  }

  const factory JobApplication({
    required String id,
    required String firstname,
    required String lastname,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, toJson: FirebaseTimestampConverters.toTimestamp) required DateTime birthday,
    required String citizenship,
    required String gender,
    required String address,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, toJson: FirebaseTimestampConverters.toTimestamp) required DateTime availableDate,
    required JobApplicationDocuments documents,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, includeToJson: false) required DateTime createdAt,
    required String companyId,
    required Company company,
    }) = _JobApplication;

  factory JobApplication.fromJson(Map<String, Object?> json)
      => _$JobApplicationFromJson(json);
}
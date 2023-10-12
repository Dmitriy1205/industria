import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/firebase_timestamp_converters.dart';

part 'contact_requests.freezed.dart';

part 'contact_requests.g.dart';

@freezed
class ContactRequests with _$ContactRequests {
  const ContactRequests._();

  static Map<String, dynamic> jsonFromRequest(
      {required String docId,
      required ContactRequests contactRequests}) {
    return {
      "id": docId,
      "firstname": contactRequests.firstname,
      "lastname": contactRequests.lastname,
      "companyName": contactRequests.companyName,
      "phoneNumber": contactRequests.phoneNumber,
      "email": contactRequests.email,
      "description": contactRequests.description,
      "createdAt": FieldValue.serverTimestamp()
    };
  }

  const factory ContactRequests({
    required final String firstname,
    required final String lastname,
    required final String companyName,
    required final String phoneNumber,
    required final String email,
    required final String description,
    final bool? read,
  }) = _ContactRequests;

  factory ContactRequests.fromJson(Map<String, Object?> json) =>
      _$ContactRequestsFromJson(json);

// static Map<String, dynamic> jsonFromRequest(
//     {required String id,
//       required String firstname,
//       required String lastname,
//       required String companyName,
//       required String phoneNumber,
//       required String email,
//       required String description,
//       required DateTime
//       createdAt}) {
//   return {
//     "id": id,
//     "firstname": firstname,
//     "lastname": lastname,
//     "companyName": companyName,
//     "phoneNumber": phoneNumber,
//     "email": email,
//     "description": description,
//     "createdAt": FieldValue.serverTimestamp(),
//     "companyId": request.company.id,
//     "company": request.company.toJson()
//   };
// }
}

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDate();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

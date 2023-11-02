import 'package:cloud_firestore/cloud_firestore.dart';

class HolidayRequestModel {
  final String firstname;
  final String lastname;
  final String reason;
  final String employeeId;
  final String type;
  final DateTime unavailableFrom;
  final DateTime unavailableTo;
  final String status;
  final bool read;
  final String photoRef;


  HolidayRequestModel({
    required this.firstname,
    required this.lastname,
    required this.reason,
    required this.employeeId,
    required this.type,
    required this.unavailableFrom,
    required this.unavailableTo,
    required this.status,
    required this.read,
    required this.photoRef
  });

  static Map<String, dynamic> jsonFromRequest(
      {required HolidayRequestModel holidayRequest, String? docId, required FieldValue createdAt, }) {
    return {
      "firstname": holidayRequest.firstname,
      "lastname": holidayRequest.lastname,
      "reason": holidayRequest.reason,
      "status": holidayRequest.status,
      "type": holidayRequest.type.toString(),
      "id": docId,
      "employeeId": holidayRequest.employeeId,
      "unavailableFrom": holidayRequest.unavailableFrom,
      "unavailableTo": holidayRequest.unavailableTo,
      "createdAt": createdAt,
      "photoRef": holidayRequest.photoRef
    };
  }
}

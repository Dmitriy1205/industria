import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:industria/core/utils/firebase_timestamp_converters.dart';
import 'package:industria/domain/entities/contact_requests/contact_requests.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@freezed
class Employee with _$Employee {
  const factory Employee({
    String? id,
    required String email,
    required String firstname,
    required String lastname,
    required String phoneNumber,
    required String role,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, toJson: FirebaseTimestampConverters.toTimestampString) required DateTime dateOfBirth,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, toJson: FirebaseTimestampConverters.toTimestampString) required DateTime worksSince,
    required String photoRef
  }) = _Employee;

  factory Employee.fromJson(Map<String, Object?> json)
      => _$EmployeeFromJson(json);
}
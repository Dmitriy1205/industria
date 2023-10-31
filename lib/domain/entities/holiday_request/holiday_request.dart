import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:industria/core/utils/firebase_timestamp_converters.dart';

part 'holiday_request.freezed.dart';
part 'holiday_request.g.dart';

@freezed
class HolidayRequest with _$HolidayRequest {
  const factory HolidayRequest({
    required String firstname,
    required String lastname,
    required String photoRef,
    required String reason,
    required String id,
    required String employeeId,
    @Default("Holiday request") String type,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, toJson: FirebaseTimestampConverters.toTimestamp) required DateTime createdAt,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, toJson: FirebaseTimestampConverters.toTimestamp) required DateTime unavailableFrom,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, toJson: FirebaseTimestampConverters.toTimestamp) required DateTime unavailableTo,
    @Default("Pending") String status,
    @Default(false) bool read,
  }) = _HolidayRequest;

  factory HolidayRequest.fromJson(Map<String, Object?> json)
      => _$HolidayRequestFromJson(json);
}
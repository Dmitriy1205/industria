import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:industria/core/utils/firebase_timestamp_converters.dart';

part 'feedback.freezed.dart';
part 'feedback.g.dart';

@freezed
class Feedback with _$Feedback {
  const factory Feedback({
    String? id,
    required String email,
    required String firstname,
    required String lastname,
    required String phoneNumber,
    required String companyName,
    required String description,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, toJson: FirebaseTimestampConverters.toTimestampString) required DateTime createdAt,
  }) = _Feedback;

  factory Feedback.fromJson(Map<String, Object?> json)
  => _$FeedbackFromJson(json);
}
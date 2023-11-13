import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/core/utils/firebase_timestamp_converters.dart';

part 'employee_document.freezed.dart';
part 'employee_document.g.dart';

@freezed
class EmployeeDocument with _$EmployeeDocument {
  const factory EmployeeDocument({
    required String id,
    required String name,
    required String location,
    @JsonKey(fromJson: FirebaseTimestampConverters.fromTimestamp, toJson: FirebaseTimestampConverters.toTimestamp) required DateTime createdAt,
  }) = _EmployeeDocument;

  factory EmployeeDocument.fromJson(Map<String, Object?> json)
  => _$EmployeeDocumentFromJson(json);
}
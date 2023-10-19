import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/firebase_timestamp_converters.dart';
import '../company/company.dart';

part 'vacancy.freezed.dart';
part 'vacancy.g.dart';

@freezed
class Vacancy with _$Vacancy {
  const factory Vacancy({
    String? id,
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
    @Default([]) List<String> questions,
    @JsonKey(
        fromJson: FirebaseTimestampConverters.fromTimestamp,
        toJson: FirebaseTimestampConverters.toTimestampString)
    required DateTime createdAt,
  }) = _Vacancy;

  factory Vacancy.fromJson(Map<String, Object?> json) =>
      _$VacancyFromJson(json);
}

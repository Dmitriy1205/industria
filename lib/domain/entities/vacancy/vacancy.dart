import '../company/company.dart';

@freezed
class Vacancy with _$Vacancy {
  const factory Vacancy({
    String? id,
    required String title,
    required Company company,
    required String type,
    required String salary,
    required String currency,
    required String period,
    required String location,
    required String area,
    required String city,
    required String description,
    required List<String> questions,
    @JsonKey(
        fromJson: FirebaseTimestampConverters.fromTimestamp,
        toJson: FirebaseTimestampConverters.toTimestampString)
    required DateTime createdAt,
  }) = _Vacancy;

  factory Vacancy.fromJson(Map<String, Object?> json) =>
      _$VacancyFromJson(json);
}

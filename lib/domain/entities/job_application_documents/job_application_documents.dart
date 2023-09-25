import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_application_documents.freezed.dart';
part 'job_application_documents.g.dart';

@freezed
class JobApplicationDocuments with _$JobApplicationDocuments {
  const factory JobApplicationDocuments({
    required String photo,
    required String cv,
    required List<String> certificates,
  }) = _JobApplicationDocuments;

  factory JobApplicationDocuments.fromJson(Map<String, Object?> json)
      => _$JobApplicationDocumentsFromJson(json);
}
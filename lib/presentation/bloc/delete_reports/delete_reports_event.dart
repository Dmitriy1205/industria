part of 'delete_reports_bloc.dart';

@freezed
class DeleteReportsEvent with _$DeleteReportsEvent {

  const factory DeleteReportsEvent.deleteReport({
    required List<String> reports
  }) = _DeleteReportsEvent;
}

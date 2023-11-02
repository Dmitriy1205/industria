part of 'create_report_bloc.dart';

@freezed
class CreateReportEvent with _$CreateReportEvent {
  const factory CreateReportEvent.createReport({
    required String type,
    required String startDate,
    required String endDate,
    required String reason,
    required String description,
    required String employeeId,
  }) = _CreateReportEvent;
}

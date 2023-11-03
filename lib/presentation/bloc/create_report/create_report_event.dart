part of 'create_report_bloc.dart';

@freezed
class CreateReportEvent with _$CreateReportEvent {
  const factory CreateReportEvent.createReport({
    required String type,
    required String reason,
    required String employeeId,
    required String lastname,
    required String firstname,
    required String photoRef,
    required DateTime unavailableFrom,
    required DateTime unavailableTo,
    required bool read,
    required String status,
  }) = _CreateReportEvent;
}

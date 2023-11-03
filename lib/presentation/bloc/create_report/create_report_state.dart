part of 'create_report_bloc.dart';


@freezed
class CreateReportState with _$CreateReportState {
  const factory CreateReportState.initial() = _InitialState;
  const factory CreateReportState.loading() = _LoadingState;
  const factory CreateReportState.error() = _ErrorState;
  const factory CreateReportState.success() = _SuccessState;
}
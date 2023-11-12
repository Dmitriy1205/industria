part of 'delete_reports_bloc.dart';


@freezed
class DeleteReportsState with _$DeleteReportsState {
  const factory DeleteReportsState.initial() = _InitialState;
  const factory DeleteReportsState.loading() = _LoadingState;
  const factory DeleteReportsState.error() = _ErrorState;
  const factory DeleteReportsState.success() = _SuccessState;
}
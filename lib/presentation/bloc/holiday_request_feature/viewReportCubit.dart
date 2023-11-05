import 'package:bloc/bloc.dart';
import '../../../domain/entities/holiday_request/holiday_request.dart';
import '../../../domain/repositories/holiday_requests/holiday_requests_repository_contract.dart';

class ViewReportCubit extends Cubit<ViewReportState> {
  final HolidayRequestsRepository holidayRequestsRepository;

  ViewReportCubit({required this.holidayRequestsRepository})
      : super(ViewReportState.initial());

  Future<void> viewReport(HolidayRequest reportData) async {
    emit(ViewReportState.loading());
    final HolidayRequest? report =
        await holidayRequestsRepository.getHolidayById(id: reportData.id);
    emit(ViewReportState.loaded(report!));
  }
}

class ViewReportState {
  final HolidayRequest? report;
  final bool isLoading;
  final String? error;

  ViewReportState({
    required this.report,
    required this.isLoading,
    required this.error,
  });

  factory ViewReportState.initial() {
    return ViewReportState(
      report: null,
      isLoading: false,
      error: null,
    );
  }

  factory ViewReportState.loading() {
    return ViewReportState(
      report: null,
      isLoading: true,
      error: null,
    );
  }

  factory ViewReportState.loaded(HolidayRequest report) {
    return ViewReportState(
      report: report,
      isLoading: false,
      error: null,
    );
  }

  factory ViewReportState.error(String error) {
    return ViewReportState(
      report: null,
      isLoading: false,
      error: error,
    );
  }
}

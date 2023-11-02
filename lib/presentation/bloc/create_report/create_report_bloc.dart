import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/domain/entities/holiday_request/holiday_request.dart';
import 'package:industria/domain/models/holiday_request_model.dart';

import '../../../domain/repositories/holiday_requests/holiday_requests_repository_contract.dart';

part 'create_report_state.dart';
part 'create_report_event.dart';
part 'create_report_bloc.freezed.dart';


class CreateReportBloc extends Bloc<CreateReportEvent, CreateReportState> {
  final HolidayRequestsRepository holidayRequestsRepository;
  CreateReportBloc(this.holidayRequestsRepository) : super(CreateReportState.initial());

  void createReport(HolidayRequestModel report) async{
    holidayRequestsRepository.createReport(report: report);
    // final report = await adminVacancyRepository.listCompanies();
    emit(CreateReportState.success());
  }
}

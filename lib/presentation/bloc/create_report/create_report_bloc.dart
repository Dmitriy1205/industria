import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/domain/entities/holiday_request/holiday_request.dart';
import 'package:industria/domain/models/holiday_request_model.dart';

import '../../../domain/repositories/holiday_requests/holiday_requests_repository_contract.dart';

part 'create_report_state.dart';

part 'create_report_event.dart';

part 'create_report_bloc.freezed.dart';

class CreateReportBloc extends Bloc<CreateReportEvent, CreateReportState> {
  final HolidayRequestsRepository holidayRequestsRepository;

  CreateReportBloc({required this.holidayRequestsRepository})
      : super(CreateReportState.initial()) {
    on<CreateReportEvent>(_mapEventToState, transformer: droppable());
  }

  Future<void> _mapEventToState(
          CreateReportEvent event, Emitter<CreateReportState> emit) =>
      event.map(
          createReport: (event) => createReport(
                event,
                emit,
              ));

  Future<void> createReport(
      CreateReportEvent event, Emitter<CreateReportState> emit) async {
    try {
      emit(const CreateReportState.loading());
      await holidayRequestsRepository.createReport(
          report: HolidayRequestModel(
              firstname: event.firstname,
              lastname: event.lastname,
              reason: event.reason,
              employeeId: event.employeeId,
              type: event.type,
              unavailableFrom: event.unavailableFrom,
              unavailableTo: event.unavailableTo,
              status: event.status,
              read: event.read,
              photoRef: event.photoRef));
      await Future.delayed(const Duration(seconds: 3));
      emit(const CreateReportState.success());
      await Future.delayed(const Duration(seconds: 3));
      emit(const CreateReportState.initial());
    } catch (e) {
      emit(const CreateReportState.error());
      await Future.delayed(const Duration(seconds: 3));
      emit(const CreateReportState.initial());
    }
  }
}

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/repositories/holiday_requests/holiday_requests_repository_contract.dart';
import '../holiday_request_feature/admin_holiday_requests_list/admin_holiday_requests_list_bloc.dart';

part 'delete_reports_state.dart';
part 'delete_reports_event.dart';

part 'delete_reports_bloc.freezed.dart';

class DeleteReportsBloc extends Bloc<DeleteReportsEvent, DeleteReportsState>{

  final HolidayRequestsRepository holidayRequestsRepository;
  final AdminHolidayRequestsListBloc adminHolidayRequestsListBloc;
  DeleteReportsBloc({required this.adminHolidayRequestsListBloc, required this.holidayRequestsRepository})
      : super
      (DeleteReportsState.initial()) {
    print('bloc1');
    on<DeleteReportsEvent>(_mapEventToState, transformer: droppable());
    print('bloc1');

  }

  Future<void> _mapEventToState(
      DeleteReportsEvent event, Emitter<DeleteReportsState> emit) =>
      event.map(
          deleteReport: (event) => deleteReport(
            event,
            emit,
          ));

  Future<void> deleteReport(_DeleteReportsEvent event, Emitter<DeleteReportsState> emit) async {
    try {
      emit(const DeleteReportsState.loading());
      await holidayRequestsRepository.deleteReport(
           selectedIdList: event.reports);
      emit(const DeleteReportsState.success());
      await Future.delayed(const Duration(seconds: 3));
      emit(const DeleteReportsState.initial());
    } catch (e) {
      emit(const DeleteReportsState.error());
      await Future.delayed(const Duration(seconds: 3));
      emit(const DeleteReportsState.initial());
    }
  }
  }

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/domain/entities/holiday_request/holiday_request.dart';
import 'package:industria/domain/entities/job_application/job_application.dart';
import 'package:industria/domain/repositories/holiday_requests/holiday_requests_repository_contract.dart';

import '../../../../domain/repositories/job_application/job_application_repository_contract.dart';

part 'view_holiday_event.dart';

part 'view_holiday_state.dart';

part 'view_holiday_bloc.freezed.dart';

class ViewHolidayBloc
    extends Bloc<ViewHolidayEvent, ViewHolidayState> {
  final HolidayRequestsRepository holidayRequestsRepository;

  ViewHolidayBloc({required this.holidayRequestsRepository})
      : super(const ViewHolidayState.initial()) {
    on<ViewHolidayEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(ViewHolidayEvent event,
          Emitter<ViewHolidayState> emit) =>
      event.map(
          markAsRead: (e) => _markAsRead(e, emit),
          fetchHolidayById: (e) => _fetchHolidayById(e,emit),
          changeStatus: (e) => _changeStatus(e,emit));
  
  Future<void> _fetchHolidayById(_FetchHolidayByIdEvent event, Emitter<ViewHolidayState> emit) async{
    final holiday = await holidayRequestsRepository.getHolidayById(id: event.id);
    if(!holiday!.read){
      await holidayRequestsRepository.markedAsRead(id: event.id);
      emit(ViewHolidayState.markedAsRead(holiday: holiday.copyWith.call(read: true)));
    }
    emit(ViewHolidayState.loaded(holiday: holiday));
  }
  Future<void> _changeStatus(_ChangeStatusEvent event, Emitter<ViewHolidayState> emit) async{
    await holidayRequestsRepository.setHolidayStatus(id: event.id, status: event.status);
    emit(ViewHolidayState.changedStatus(holiday: state.holiday!.copyWith.call(status: event.status)));
  }

  Future<void> _markAsRead(_MarkAsReadEvent event, Emitter<ViewHolidayState> emit) async{
    await holidayRequestsRepository.markedAsRead(id: event.id);
    emit(ViewHolidayState.markedAsRead(holiday: state.holiday!.copyWith.call(read: true)));
  }
}

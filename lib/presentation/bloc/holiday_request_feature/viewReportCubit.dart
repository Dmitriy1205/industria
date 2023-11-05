import 'package:bloc/bloc.dart';

import '../../../domain/entities/holiday_request/holiday_request.dart';
import '../../../domain/repositories/holiday_requests/holiday_requests_repository_contract.dart';


class ViewReportCubit extends Cubit<HolidayRequest?> {
  final HolidayRequestsRepository holidayRequestsRepository;
  ViewReportCubit({required this.holidayRequestsRepository}) : super(null);

  Future<HolidayRequest?> viewReport(String reportData) async{
    final HolidayRequest? report = await holidayRequestsRepository.getHolidayById( id: reportData);
    emit(report);
  }
}


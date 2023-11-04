import 'package:industria/domain/models/holiday_request_model.dart';

import '../../../core/table_data/table_data.dart';
import '../../entities/holiday_request/holiday_request.dart';

abstract class HolidayRequestsRepository{
  Future<TableData<List<HolidayRequest>>> listHolidayRequests({required int page, required int elementsPerPage, required String searchTerm});
  Future<HolidayRequest?> getHolidayById({required String id});
  Future<void> setHolidayStatus({required String id, required String status});
  Future<void> markedAsRead({required String id});
  Future<void> createReport({required HolidayRequestModel report});
  Future<void> deleteReport({required List<String> selectedIdList});
}
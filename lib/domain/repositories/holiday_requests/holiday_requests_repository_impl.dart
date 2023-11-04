import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/data/remote/holiday_requests/holiday_requests_service_contract.dart';
import 'package:industria/domain/entities/holiday_request/holiday_request.dart';
import 'package:industria/domain/models/holiday_request_model.dart';
import 'package:industria/domain/repositories/holiday_requests/holiday_requests_repository_contract.dart';

class HolidayRequestsRepositoryImpl implements HolidayRequestsRepository{
  final HolidayRequestsService db;
  @override
  Future<TableData<List<HolidayRequest>>> listHolidayRequests({required int page, required int elementsPerPage, required String searchTerm}) {
    return db.listHolidayRequests(page: page, elementsPerPage: elementsPerPage, searchTerm: searchTerm);
  }

  @override
  Future<HolidayRequest?> getHolidayById({required String id}) {
    return db.getHolidayById(id: id);
  }

  @override
  Future<void> markedAsRead({required String id}) {
    return db.markedAsRead(id: id);
  }

  @override
  Future<void> setHolidayStatus({required String id, required String status}) {
    return db.setHolidayStatus(id: id, status: status);
  }
  @override
  Future<void> createReport({required HolidayRequestModel report}) async {
    await db.createReport(report: report);
  }
  @override
  Future<void> deleteReport({required List<String> selectedIdList}) async {
    print('repository1');
    await db.deleteReport(ids: selectedIdList);
    print('repository2');

  }


  const HolidayRequestsRepositoryImpl({
    required this.db,
  });
}
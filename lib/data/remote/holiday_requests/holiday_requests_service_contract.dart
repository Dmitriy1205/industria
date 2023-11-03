import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/domain/entities/holiday_request/holiday_request.dart';
import 'package:industria/domain/models/holiday_request_model.dart';

abstract class HolidayRequestsService {
  Future<TableData<List<HolidayRequest>>> listHolidayRequests(
      {required int page,
      required int elementsPerPage,
      required String searchTerm});

  Future<HolidayRequest?> getHolidayById({required String id});

  Future<void> setHolidayStatus({required String id, required String status});

  Future<void> markedAsRead({required String id});

  Future<void> createReport({required HolidayRequestModel report});}

import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/domain/entities/job_filters/job_filters.dart';
import 'package:industria/domain/entities/job_offer/job_offer.dart';

abstract class JobRepository{
  Future<TableData<List<JobOffer>>> findJobOffers({required JobFilters filter});
  Future<JobOffer?> getJobOfferById({required String id});
}
import 'package:industria/domain/entities/job_filters/job_filters.dart';
import 'package:industria/domain/entities/job_offer/job_offer.dart';

abstract class JobRepository{
  Future<List<JobOffer>> findJobOffers({required JobFilters filter});
}
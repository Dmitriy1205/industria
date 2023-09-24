import '../../../domain/entities/job_filters/job_filters.dart';
import '../../../domain/entities/job_offer/job_offer.dart';

abstract class JobService{
  Future<List<JobOffer>> findJobOffers({required JobFilters filter});
}
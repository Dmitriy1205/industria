import 'package:industria/data/remote/job/job_service_contract.dart';
import 'package:industria/domain/entities/job_filters/job_filters.dart';
import 'package:industria/domain/entities/job_offer/job_offer.dart';
import 'package:industria/domain/repositories/job/job_repository_contract.dart';

class JobRepositoryImpl implements JobRepository{
  final JobService db;
  @override
  Future<List<JobOffer>> findJobOffers({required JobFilters filter}) => db.findJobOffers(filter: filter);

  @override
  Future<JobOffer?> getJobOfferById({required String id}) {
    return db.getJobOfferById(id: id);
  }

  const JobRepositoryImpl({
    required this.db,
  });

}
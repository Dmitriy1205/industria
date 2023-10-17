import 'package:bloc/bloc.dart';
import 'package:industria/domain/entities/job_offer/job_offer.dart';

import '../../../../domain/repositories/job/job_repository_contract.dart';

class JobDetailsCubit extends Cubit<JobOffer?> {
  final JobRepository jobRepository;
  JobDetailsCubit({required this.jobRepository}) : super(null);

  Future<void> fetchJobApplicationById(String id) async{
    final jobOffer = await jobRepository.getJobOfferById(id: id);
    emit(jobOffer);
  }
}

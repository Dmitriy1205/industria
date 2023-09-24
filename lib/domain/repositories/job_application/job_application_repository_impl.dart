import 'package:industria/data/remote/job_application/job_application_service_contract.dart';
import 'package:industria/domain/entities/job_application/job_application.dart';
import 'package:industria/domain/repositories/job_application/job_application_repository_contract.dart';

import '../../entities/job_application_request/job_application_request.dart';

class JobApplicationRepositoryImpl implements JobApplicationRepository{
  final JobApplicationService db;
  @override
  Future<void> applyForJob({required JobApplicationRequest jobApplication}) => db.applyForJob(jobApplication: jobApplication);

  const JobApplicationRepositoryImpl({
    required this.db,
  });
}
import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/data/remote/job_application/job_application_service_contract.dart';
import 'package:industria/domain/entities/job_application/job_application.dart';
import 'package:industria/domain/repositories/job_application/job_application_repository_contract.dart';

import '../../entities/job_application_request/job_application_request.dart';

class JobApplicationRepositoryImpl implements JobApplicationRepository {
  final JobApplicationService db;

  @override
  Future<void> applyForJob({required JobApplicationRequest jobApplication}) =>
      db.applyForJob(jobApplication: jobApplication);

  @override
  Future<TableData<List<JobApplication>>> listJobApplications({required int page, required int elementsPerPage, required String searchTerm}) {
    return db.listJobApplications(page: page, elementsPerPage: elementsPerPage, searchTerm: searchTerm);
  }
  @override
  Future<JobApplication?> getJobApplicationById({required String id}){
    return db.getJobApplicationById(id: id);
  }
  @override
  Future<void> setJobApplicationsStatus({required String id, required String status}){
    return db.setJobApplicationsStatus(id: id, status: status);
  }

  @override
  Future<void> markedAsRead({required String id}){
    return db.markedAsRead(id: id);
  }

  const JobApplicationRepositoryImpl({
    required this.db,
  });
}

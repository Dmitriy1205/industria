import 'package:industria/domain/entities/job_application/job_application.dart';
import 'package:industria/domain/entities/job_application_request/job_application_request.dart';

import '../../../core/table_data/table_data.dart';

abstract class JobApplicationService{
  Future<void> applyForJob({required JobApplicationRequest jobApplication});
  Future<TableData<List<JobApplication>>> listJobApplications({required int page, required int elementsPerPage, required String searchTerm});
  Future<JobApplication?> getJobApplicationById({required String id});
  Future<void> setJobApplicationsStatus({required String id, required String status});
  Future<void> markedAsRead({required String id});
}
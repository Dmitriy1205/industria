import 'package:industria/domain/entities/job_application_request/job_application_request.dart';

abstract class JobApplicationService{
  Future<void> applyForJob({required JobApplicationRequest jobApplication});
}
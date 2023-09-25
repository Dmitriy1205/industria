import 'package:industria/domain/entities/job_application/job_application.dart';

import '../../entities/job_application_request/job_application_request.dart';


abstract class JobApplicationRepository{
  Future<void> applyForJob({required JobApplicationRequest jobApplication});
}
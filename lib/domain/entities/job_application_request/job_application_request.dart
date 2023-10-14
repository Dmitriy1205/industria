import 'package:industria/domain/entities/job_offer/job_offer.dart';

import '../company/company.dart';

class JobApplicationRequest{
  final String firstname;
  final String lastname;
  final DateTime birthday;
  final String citizenship;
  final String gender;
  final String address;
  final DateTime availableDate;
  final Company company;
  final JobOffer offer;
  final JobApplicationRequestDocuments documents;

  const JobApplicationRequest({
    required this.firstname,
    required this.lastname,
    required this.birthday,
    required this.citizenship,
    required this.gender,
    required this.address,
    required this.availableDate,
    required this.company,
    required this.documents,
    required this.offer
  });
}

class JobApplicationRequestDocuments{
  final JobApplicationRequestDocument photo;
  final JobApplicationRequestDocument cv;
  final List<JobApplicationRequestDocument> certificates;

  const JobApplicationRequestDocuments({
    required this.photo,
    required this.cv,
    required this.certificates,
  });
}

class JobApplicationRequestDocument{
  final List<int> bytes;
  ///Extension in format "png", "jpg", "pdf", etc...
  final String extension;

  const JobApplicationRequestDocument({
    required this.bytes,
    required this.extension,
  });
}

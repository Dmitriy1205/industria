import 'dart:typed_data';

import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:industria/core/constants/firestore_collections.dart';
import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/data/remote/job_application/job_application_service_contract.dart';
import 'package:industria/domain/entities/job_application/job_application.dart';

import '../../../domain/entities/job_application_request/job_application_request.dart';

String _applicantDocumentsDir(String jobApplicationId) =>
    'applicant_documents/$jobApplicationId/';

///Uploads job applications to firestore and storage, works only with
///png, jpg, jpeg and pdf files
class JobApplicationServiceImpl implements JobApplicationService {
  final FirebaseFirestore db;
  final FirebaseStorage storage;
  final Algolia algolia;

  @override
  Future<void> applyForJob(
      {required JobApplicationRequest jobApplication}) async {
    try {
      final localDocuments = jobApplication.documents;
      final docRef = db.collection(FirestoreCollections.jobApplications).doc();
      final uploadPath = _applicantDocumentsDir(docRef.id);

      final photoPath = await _uploadFile(
          filename: "photo.${localDocuments.photo.extension}",
          bytes: localDocuments.photo.bytes,
          uploadPath: uploadPath);
      final cvPath = await _uploadFile(
          filename: "cv.${localDocuments.cv.extension}",
          bytes: localDocuments.cv.bytes,
          uploadPath: uploadPath);
      final certificatesPaths = await Future.wait(localDocuments.certificates
          .asMap()
          .entries
          .map((e) => _uploadFile(
              filename: "cert_${e.key + 1}.${e.value.extension}",
              bytes: e.value.bytes,
              uploadPath: uploadPath)));

      final json = JobApplication.jsonFromRequest(
          request: jobApplication,
          docId: docRef.id,
          photoPath: photoPath,
          cvPath: cvPath,
          certificatesPaths: certificatesPaths);

      await docRef.set(json);
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  ///Receives filename, bytes, uploads to cloud storage and returns path to file
  ///in cloud storage
  Future<String> _uploadFile(
      {required String filename,
      required List<int> bytes,
      required String uploadPath}) async {
    final filePath = uploadPath + filename;
    await storage
        .ref(filePath)
        .putData(Uint8List.fromList(bytes), _metadataFromFilename(filename));
    return filePath;
  }

  SettableMetadata? _metadataFromFilename(String filename) {
    final extension = filename.split(".").last;
    switch (extension) {
      case "png":
        return SettableMetadata(contentType: "image/png");
      case "jpeg" || "jpg":
        return SettableMetadata(contentType: "image/jpeg");
      case "pdf":
        return SettableMetadata(contentType: "application/pdf");
    }
    return null;
  }

  @override
  Future<TableData<List<JobApplication>>> listJobApplications(
      {required int page,
      required int elementsPerPage,
      required String searchTerm}) async {
    final index = algolia.index("dev_job_applications");
    AlgoliaQuery currentQuery = index.query(searchTerm);
    currentQuery = currentQuery.setHitsPerPage(elementsPerPage).setPage(page);
    final objects = await currentQuery.getObjects();
    final employees =
        objects.hits.map((e) => JobApplication.fromJson(e.data)).toList();
    return TableData(
        numberOfPages: objects.nbPages,
        totalElementCounts: objects.nbHits,
        currentPage: objects.page,
        element: employees);
  }

  @override
  Future<JobApplication?> getJobApplicationById({required String id}) async {
    final snapshot =
        await db.collection(FirestoreCollections.jobApplications).doc(id).get();
    if (snapshot.exists) {
      return JobApplication.fromJson(snapshot.data()!);
    } else {
      return null;
    }
  }

  @override
  Future<void> setJobApplicationsStatus(
      {required String id, required String status}) {
    return db
        .collection(FirestoreCollections.jobApplications)
        .doc(id)
        .update({"status": status});
  }

  @override
  Future<void> markedAsRead({required String id}) {
    return db
        .collection(FirestoreCollections.jobApplications)
        .doc(id)
        .update({"read": true});
  }

  JobApplicationServiceImpl({
    required this.db,
    required this.storage,
    required this.algolia,
  });
}

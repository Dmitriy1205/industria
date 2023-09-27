import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../../core/constants/firestore_collections.dart';
import '../../../domain/entities/contact_requests/contact_requests.dart';
import 'contact_requests_service_contract.dart';

String _contactRequestsDir(String contactRequestId) =>
    'contact_requests/$contactRequestId/';

class ContactRequestsServiceImpl implements ContactRequestsService {
  final FirebaseFirestore db;
  final FirebaseStorage storage;

  @override
  Future<void> sendContactRequests(
      {required ContactRequests contactRequests}) async {
    final localDocuments = contactRequests;
    final docRef = db.collection(FirestoreCollections.contactRequests).doc();
    final uploadPath = _contactRequestsDir(docRef.id);

    final json = ContactRequests.jsonFromRequest(
        id: contactRequests.id,
        firstname: contactRequests.firstname,
        lastname: contactRequests.lastname,
        companyName: contactRequests.companyName,
        description: contactRequests.description,
        email: contactRequests.email,
        phoneNumber: contactRequests.phoneNumber);
    await docRef.set(json);
  }

  const ContactRequestsServiceImpl({
    required this.db,
    required this.storage,
  });
}

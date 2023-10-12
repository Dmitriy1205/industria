import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:industria/core/table_data/table_data.dart';

import '../../../core/constants/firestore_collections.dart';
import '../../../domain/entities/contact_requests/contact_requests.dart';
import 'contact_requests_service_contract.dart';

String _contactRequestsDir(String contactRequestId) =>
    'contact_requests/$contactRequestId/';

class ContactRequestsServiceImpl implements ContactRequestsService {
  final FirebaseFirestore db;
  final FirebaseStorage storage;
  final Algolia algolia;

  @override
  Future<void> sendContactRequests(
      {required ContactRequests contactRequests}) async {
    final localDocuments = contactRequests;
    final docRef = db.collection(FirestoreCollections.contactRequests).doc();
    final uploadPath = _contactRequestsDir(docRef.id);

    final json = ContactRequests.jsonFromRequest(
        docId: docRef.id,
        contactRequests: contactRequests);
    await docRef.set(json);
  }

  @override
  Future<void> deleteContactRequests({required List<String> uids}) {
    return db.runTransaction((transaction) async {
      for (var uid in uids) {
        var docRef = db.collection(FirestoreCollections.contactRequests).doc(uid);
        transaction.delete(docRef);
      }
    });
  }

  @override
  Future<TableData<List<ContactRequests>>> listContactRequests({required int currentPage, required int elementsPerPage, required String searchTerm}) async{
    final index = algolia.index("dev_feedbacks");
    AlgoliaQuery currentQuery = index.query(searchTerm);
    currentQuery =
        currentQuery.setHitsPerPage(elementsPerPage).setPage(currentPage);
    final objects = await currentQuery.getObjects();
    final employees = objects.hits.map((e) => ContactRequests.fromJson(e.data)).toList();
    return TableData(numberOfPages: objects.nbPages, totalElementCounts: objects.nbHits, currentPage: objects.page, element: employees);
  }

  @override
  Future<void> markContactRequestAsRead({required String uid}) {
    return db.collection(FirestoreCollections.contactRequests).doc(uid).update({"read": true});
  }

  const ContactRequestsServiceImpl({
    required this.db,
    required this.storage,
    required this.algolia,
  });
}

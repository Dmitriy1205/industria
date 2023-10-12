import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/data/remote/contact_requests/contact_requests_service_contract.dart';
import 'package:industria/domain/entities/contact_requests/contact_requests.dart';
import 'contact_request_repository_contract.dart';

class ContactRequestsRepositoryImpl implements ContactRequestsRepository {
  final ContactRequestsService db;

  const ContactRequestsRepositoryImpl({
    required this.db,
  });

  @override
  Future<void> sendContactRequest(
      {required ContactRequests contactRequests}) {
    return db.sendContactRequests(contactRequests: contactRequests);
  }

  @override
  Future<void> deleteContactRequests({required List<String> uids}) {
    return db.deleteContactRequests(uids: uids);
  }

  @override
  Future<TableData<List<ContactRequests>>> listContactRequests({required int currentPage, required int elementsPerPage, required String searchTerm}) {
    return db.listContactRequests(currentPage: currentPage, elementsPerPage: elementsPerPage, searchTerm: searchTerm);
  }

  @override
  Future<void> markContactRequestAsRead({required String uid}) {
    return db.markContactRequestAsRead(uid: uid);
  }
}

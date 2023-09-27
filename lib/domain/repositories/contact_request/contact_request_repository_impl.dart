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
      {required ContactRequests contactRequests}) async {
    db.sendContactRequests(contactRequests: contactRequests);
  }
}

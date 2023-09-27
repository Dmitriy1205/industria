import '../../entities/contact_requests/contact_requests.dart';

abstract class ContactRequestsRepository{
  Future<void> sendContactRequest({required ContactRequests contactRequests});
}
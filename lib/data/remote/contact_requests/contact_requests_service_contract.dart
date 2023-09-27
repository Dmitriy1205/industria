import '../../../domain/entities/contact_requests/contact_requests.dart';

abstract class ContactRequestsService{
  Future<void> sendContactRequests({required ContactRequests contactRequests});
}
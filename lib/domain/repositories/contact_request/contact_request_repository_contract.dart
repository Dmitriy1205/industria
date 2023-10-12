import '../../../core/table_data/table_data.dart';
import '../../entities/contact_requests/contact_requests.dart';

abstract class ContactRequestsRepository{
  Future<void> sendContactRequest({required ContactRequests contactRequests});
  Future<TableData<List<ContactRequests>>> listContactRequests({required int currentPage, required int elementsPerPage, required String searchTerm});
  Future<void> deleteContactRequests({required List<String> uids});
  Future<void> markContactRequestAsRead({required String uid});
}
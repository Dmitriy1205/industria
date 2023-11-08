import '../../../core/table_data/table_data.dart';
import '../../entities/company/company.dart';

abstract class AdminCompanyRepository{
  Future<void> createCompany({required String companyName, required String photoName, required List<int> photoBytes});
  Future<void> updateCompany({required String uid, required String companyName, required String? photoName, required List<int>? photoBytes});
  Future<void> deleteCompany({required String companyUid});
  Future<TableData<List<Company>>> listCompanies({required int page, required int elementsPerPage, required String searchTerm});
  Future<Company?> getCompanyById(String companyId);
}
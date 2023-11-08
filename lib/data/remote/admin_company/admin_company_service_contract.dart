import 'package:industria/domain/entities/company/company.dart';

import '../../../core/table_data/table_data.dart';

abstract class AdminCompanyService{
  Future<void> createCompany({required String companyName, required String photoName, required List<int> photoBytes});
  Future<void> updateCompany({required String uid, required String companyName, required String? photoName, required List<int>? photoBytes});
  Future<void> deleteCompany({required String companyUid});
  Future<TableData<List<Company>>> listCompanies({required int page, required int elementsPerPage, required String searchTerm});
  Future<Company?> getCompanyById(String companyId);
}
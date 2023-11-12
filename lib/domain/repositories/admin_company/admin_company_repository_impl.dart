import 'package:industria/core/table_data/table_data.dart';
import 'package:industria/data/remote/admin_company/admin_company_service_contract.dart';

import 'package:industria/domain/entities/company/company.dart';

import 'admin_company_repository_contract.dart';

class AdminCompanyRepositoryImpl implements AdminCompanyRepository{
  final AdminCompanyService db;
  @override
  Future<void> createCompany({required String companyName, required String photoName, required List<int> photoBytes}) {
    return db.createCompany(companyName: companyName, photoName: photoName, photoBytes: photoBytes);
  }

  @override
  Future<void> deleteCompany({required String companyUid}) {
    return db.deleteCompany(companyUid: companyUid);
  }

  @override
  Future<Company?> getCompanyById(String companyId) {
    return db.getCompanyById(companyId);
  }

  @override
  Future<TableData<List<Company>>> listCompanies({required int page, required int elementsPerPage, required String searchTerm}) {
    return db.listCompanies(page: page, elementsPerPage: elementsPerPage, searchTerm: searchTerm);
  }

  @override
  Future<void> updateCompany({required String uid, required String companyName, required String? photoName, required List<int>? photoBytes}) {
    return db.updateCompany(uid: uid, companyName: companyName, photoName: photoName, photoBytes: photoBytes);
  }

  const AdminCompanyRepositoryImpl({
    required this.db,
  });

}
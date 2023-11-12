import 'package:bloc/bloc.dart';
import 'package:industria/domain/entities/company/company.dart';
import 'package:industria/domain/entities/employee/employee.dart';
import 'package:industria/domain/repositories/admin_company/admin_company_repository_contract.dart';

import '../../../../domain/repositories/admin_employee/admin_employee_repository_contract.dart';

class AdminCompanyDetailsCubit extends Cubit<Company?> {
  final AdminCompanyRepository adminCompanyRepository;
  AdminCompanyDetailsCubit({required this.adminCompanyRepository}) : super(null);

  Future<void> fetchCompanyById(String companyId) async{
    final employee = await adminCompanyRepository.getCompanyById(companyId);
    emit(employee);
  }
}

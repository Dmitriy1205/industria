import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/company/company.dart';
import '../../../domain/repositories/admin_vacancy/admin_vacancy_repository_contract.dart';

part 'companies_state.dart';

class CompaniesCubit extends Cubit<List<Company>?> {
  final AdminVacancyRepository adminVacancyRepository;
  CompaniesCubit({required this.adminVacancyRepository}) : super(null);

  void fetchCompanies() async{
    final companies = await adminVacancyRepository.listCompanies();
    emit(companies);
  }
}

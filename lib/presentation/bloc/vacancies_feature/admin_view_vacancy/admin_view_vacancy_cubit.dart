import 'package:bloc/bloc.dart';
import 'package:industria/domain/entities/vacancy/vacancy.dart';

import '../../../../domain/repositories/admin_vacancy/admin_vacancy_repository_contract.dart';

class AdminViewVacancyCubit extends Cubit<Vacancy?> {
  final AdminVacancyRepository adminVacancyRepository;
  AdminViewVacancyCubit({required this.adminVacancyRepository}) : super(null);

  Future<void> fetchVacancyById(String id) async{
    final vacancy = await adminVacancyRepository.getVacancyById(vacancyId: id);
    emit(vacancy);
  }
}

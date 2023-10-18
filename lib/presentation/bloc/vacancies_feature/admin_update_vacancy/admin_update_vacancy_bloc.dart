import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/company/company.dart';
import '../../../../domain/repositories/admin_vacancy/admin_vacancy_repository_contract.dart';

part 'admin_update_vacancy_event.dart';

part 'admin_update_vacancy_state.dart';

part 'admin_update_vacancy_bloc.freezed.dart';

class AdminUpdateVacancyBloc
    extends Bloc<AdminUpdateVacancyEvent, AdminUpdateVacancyState> {
  final AdminVacancyRepository _adminVacancyRepository;

  AdminUpdateVacancyBloc(
      {required AdminVacancyRepository adminVacancyRepository})
      : _adminVacancyRepository = adminVacancyRepository,
        super(const AdminUpdateVacancyState.initial()) {
    on<AdminUpdateVacancyEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(AdminUpdateVacancyEvent event,
          Emitter<AdminUpdateVacancyState> emit) =>
      event.map(updateEmployee: (e) => _updateEmployee(e, emit));

  Future<void> _updateEmployee(
      _UpdateEmployeeEvent event, Emitter<AdminUpdateVacancyState> emit) async {
    try {
      emit(const AdminUpdateVacancyState.loading());
      await _adminVacancyRepository.updateVacancy(
          id: event.id,
          title: event.title,
          company: event.company,
          type: event.type,
          salary: event.salary,
          currency: event.currency,
          period: event.period,
          location: event.location,
          area: event.area,
          city: event.city,
          description: event.description,
          questions: event.questions);
      emit(const AdminUpdateVacancyState.success());
      await Future.delayed(const Duration(seconds: 3));
      emit(const AdminUpdateVacancyState.initial());
    } catch (e) {
      emit(const AdminUpdateVacancyState.fail());
      await Future.delayed(const Duration(seconds: 3));
      emit(const AdminUpdateVacancyState.initial());
    }
  }
}

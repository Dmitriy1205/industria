import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/job_offer/job_offer.dart';
import '../../../../domain/entities/vacancy/vacancy.dart';
import '../../../../domain/repositories/admin_vacancy/admin_vacancy_repository_contract.dart';

part 'admin_delete_vacancy_event.dart';

part 'admin_delete_vacancy_state.dart';

part 'admin_delete_vacancy_bloc.freezed.dart';

class AdminDeleteVacancyBloc
    extends Bloc<AdminDeleteVacancyEvent, AdminDeleteVacancyState> {
  final AdminVacancyRepository _adminVacancyRepository;

  AdminDeleteVacancyBloc(
      {required AdminVacancyRepository adminVacancyRepository})
      : _adminVacancyRepository = adminVacancyRepository,
        super(const AdminDeleteVacancyState.initial()) {
    on<AdminDeleteVacancyEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(AdminDeleteVacancyEvent event,
          Emitter<AdminDeleteVacancyState> emit) =>
      event.map(deleteVacancy: (e) => _deleteVacancy(e, emit));

  Future<void> _deleteVacancy(
      _DeleteVacancyEvent event, Emitter<AdminDeleteVacancyState> emit) async {
    emit(const AdminDeleteVacancyState.loading());
    try {
      await _adminVacancyRepository.deleteVacancy(
          vacanciesIds: event.vacanciesIds);
      emit(const AdminDeleteVacancyState.success());
      emit(const AdminDeleteVacancyState.initial());
    } catch (e) {
      emit(const AdminDeleteVacancyState.fail());
      emit(const AdminDeleteVacancyState.initial());
    }
  }
}

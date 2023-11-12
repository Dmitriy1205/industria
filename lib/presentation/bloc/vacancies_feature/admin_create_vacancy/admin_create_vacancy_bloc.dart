import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/domain/repositories/admin_feedback/admin_feedback_repository_contract.dart';

import '../../../../domain/entities/company/company.dart';
import '../../../../domain/repositories/admin_vacancy/admin_vacancy_repository_contract.dart';

part 'admin_create_vacancy_event.dart';

part 'admin_create_vacancy_state.dart';

part 'admin_create_vacancy_bloc.freezed.dart';

class AdminCreateVacancyBloc
    extends Bloc<AdminCreateVacancyEvent, AdminCreateVacancyState> {
  final AdminVacancyRepository _adminVacancyRepository;

  AdminCreateVacancyBloc(
      {required AdminVacancyRepository adminVacancyRepository})
      : _adminVacancyRepository = adminVacancyRepository,
        super(const AdminCreateVacancyState.initial()) {
    on<AdminCreateVacancyEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(AdminCreateVacancyEvent event,
          Emitter<AdminCreateVacancyState> emit) =>
      event.map(createVacancy: (e) => _createVacancy(e, emit));

  Future<void> _createVacancy(
      _CreateVacancyEvent event, Emitter<AdminCreateVacancyState> emit) async {
    try {
      emit(const AdminCreateVacancyState.loading());
      await _adminVacancyRepository.createVacancy(
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
      await Future.delayed(const Duration(seconds: 3));
      emit(const AdminCreateVacancyState.success());
      await Future.delayed(const Duration(seconds: 3));
      emit(const AdminCreateVacancyState.initial());
    } catch (e) {
      emit(const AdminCreateVacancyState.fail());
      await Future.delayed(const Duration(seconds: 3));
      emit(const AdminCreateVacancyState.initial());
    }
  }
}

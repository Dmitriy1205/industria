import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
      event.map(createVacancy: (e) => _createEmployee(e, emit));

  Future<void> _createEmployee(
      _CreateVacancyEvent event, Emitter<AdminCreateVacancyState> emit) async {
    try {
      emit(const AdminCreateVacancyState.loading());
      await _adminVacancyRepository.createVacancy(
          email: event.email,
          password: event.password,
          firstname: event.firstname,
          lastname: event.lastname,
          phoneNumber: event.phoneNumber,
          role: event.role,
          dateOfBirth: event.dateOfBirth,
          worksSince: event.worksSince,
          imgFilename: event.imgFilename,
          imgBytes: event.imgBytes);
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

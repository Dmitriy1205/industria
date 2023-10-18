part of 'admin_create_vacancy_bloc.dart';

@freezed
class AdminCreateVacancyEvent with _$AdminCreateVacancyEvent {
  const factory AdminCreateVacancyEvent.createVacancy({
    required String email,
    required String password,
    required String firstname,
    required String lastname,
    required String phoneNumber,
    required String role,
    required DateTime dateOfBirth,
    required DateTime worksSince,
    required String imgFilename,
    required List<int> imgBytes}) = _CreateVacancyEvent;
}

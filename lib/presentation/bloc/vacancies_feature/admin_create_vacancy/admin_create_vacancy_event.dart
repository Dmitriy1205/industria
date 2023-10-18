part of 'admin_create_vacancy_bloc.dart';

@freezed
class AdminCreateVacancyEvent with _$AdminCreateVacancyEvent {
  const factory AdminCreateVacancyEvent.createVacancy({
    required String title,
    required Company company,
    required String type,
    required String salary,
    required String currency,
    required String period,
    required String location,
    required String area,
    required String city,
    required String description,
    required List<String> questions}) = _CreateVacancyEvent;
}

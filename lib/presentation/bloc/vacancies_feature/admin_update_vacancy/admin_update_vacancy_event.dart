part of 'admin_update_vacancy_bloc.dart';

@freezed
class AdminUpdateVacancyEvent with _$AdminUpdateVacancyEvent {
  const factory AdminUpdateVacancyEvent.updateVacancy(
      {required String id,
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
      required List<String> questions}) = _UpdateVacancyEvent;
}

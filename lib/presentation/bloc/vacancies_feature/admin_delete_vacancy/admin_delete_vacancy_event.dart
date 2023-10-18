part of 'admin_delete_vacancy_bloc.dart';

@freezed
class AdminDeleteVacancyEvent with _$AdminDeleteVacancyEvent {
  const factory AdminDeleteVacancyEvent.deleteEmployee({required List<String> vacanciesIds}) = _DeleteEmployeeEvent;
}

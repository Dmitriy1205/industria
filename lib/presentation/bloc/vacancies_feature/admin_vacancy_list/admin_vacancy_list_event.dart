part of 'admin_vacancy_list_bloc.dart';

@freezed
class AdminVacancyListEvent with _$AdminVacancyListEvent {
  const factory AdminVacancyListEvent.fetchData({required int page,
    required int elementsPerPage}) = _FetchInitialDataEvent;

  const factory AdminVacancyListEvent.changeSearchTerm({required String searchTerm}) = _ChangeSearchTermEvent;
}

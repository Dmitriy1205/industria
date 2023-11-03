part of 'admin_companies_list_bloc.dart';

@freezed
class AdminCompaniesListEvent with _$AdminCompaniesListEvent {
  const factory AdminCompaniesListEvent.fetchData({required int page,
    required int elementsPerPage}) = _FetchInitialDataEvent;

  const factory AdminCompaniesListEvent.changeSearchTerm({required String searchTerm}) = _ChangeSearchTermEvent;
}

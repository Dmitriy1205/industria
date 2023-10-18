import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/table_data/table_data.dart';
import '../../../../domain/entities/vacancy/vacancy.dart';
import '../../../../domain/repositories/admin_vacancy/admin_vacancy_repository_contract.dart';

part 'admin_vacancy_list_event.dart';

part 'admin_vacancy_list_state.dart';

part 'admin_vacancy_list_bloc.freezed.dart';

class AdminVacancyListBloc
    extends Bloc<AdminVacancyListEvent, AdminVacancyListState> {
  final AdminVacancyRepository _adminVacancyRepository;

  AdminVacancyListBloc({required AdminVacancyRepository adminVacancyRepository})
      : _adminVacancyRepository = adminVacancyRepository,
        super(const AdminVacancyListState.initial()) {
    on<AdminVacancyListEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(
          AdminVacancyListEvent event, Emitter<AdminVacancyListState> emit) =>
      event.map(
          fetchData: (e) => _fetchData(e, emit),
          changeSearchTerm: (e) => _changeSearchTerm(e, emit));

  Future<void> _fetchData(
      _FetchInitialDataEvent event, Emitter<AdminVacancyListState> emit) async {
    final previousState = state;
    try {
      final tableData = await _adminVacancyRepository.listVacancy(
          page: event.page,
          elementsPerPage: event.elementsPerPage,
          searchTerm: 'event');
      emit(AdminVacancyListState.loaded(
          tableData: tableData, searchTerm: state.searchTerm));
    } catch (e) {
      emit(previousState);
    }
  }

  Future<void> _changeSearchTerm(
      _ChangeSearchTermEvent event, Emitter<AdminVacancyListState> emit) async {
    emit(AdminVacancyListState.loaded(
        tableData: state.tableData, searchTerm: event.searchTerm));
    add(AdminVacancyListEvent.fetchData(page: 0, elementsPerPage: 5));
  }
}

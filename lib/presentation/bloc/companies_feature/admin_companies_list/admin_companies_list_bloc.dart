import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/domain/entities/company/company.dart';

import '../../../../core/table_data/table_data.dart';
import '../../../../domain/repositories/admin_company/admin_company_repository_contract.dart';

part 'admin_companies_list_event.dart';
part 'admin_companies_list_state.dart';
part 'admin_companies_list_bloc.freezed.dart';

class AdminCompaniesListBloc extends Bloc<AdminCompaniesListEvent, AdminCompaniesListState> {
  final AdminCompanyRepository adminCompanyRepository;
  AdminCompaniesListBloc({required this.adminCompanyRepository}) : super(const AdminCompaniesListState.initial()) {
    on<AdminCompaniesListEvent>(_mapEventToState, transformer: droppable());
  }

  Future<void> _mapEventToState(AdminCompaniesListEvent event, Emitter<AdminCompaniesListState> emit) => event.map(fetchData: (e) => _fetchData(e, emit), changeSearchTerm: (e) => _changeSearchTerm(e, emit));

  Future<void> _fetchData(_FetchInitialDataEvent event, Emitter<AdminCompaniesListState> emit) async{
    final previousState = state;
    try{
      final tableData = await adminCompanyRepository.listCompanies(page: event.page, elementsPerPage: event.elementsPerPage, searchTerm: state.searchTerm);
      emit(AdminCompaniesListState.loaded(tableData: tableData, searchTerm: state.searchTerm));
    }catch(e){
      emit(previousState);
    }
  }

  Future<void> _changeSearchTerm(_ChangeSearchTermEvent event, Emitter<AdminCompaniesListState> emit) async{
    emit(AdminCompaniesListState.loaded(tableData: state.tableData, searchTerm: event.searchTerm));
    add(const AdminCompaniesListEvent.fetchData(page: 0, elementsPerPage: 5));
  }
}

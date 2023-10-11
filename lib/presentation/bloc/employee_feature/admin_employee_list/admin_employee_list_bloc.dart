import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/table_data/table_data.dart';
import '../../../../domain/entities/employee/employee.dart';
import '../../../../domain/repositories/admin_employee/admin_employee_repository_contract.dart';

part 'admin_employee_list_event.dart';

part 'admin_employee_list_state.dart';

part 'admin_employee_list_bloc.freezed.dart';

class AdminEmployeeListBloc
    extends Bloc<AdminEmployeeListEvent, AdminEmployeeListState> {
  final AdminEmployeeRepository adminEmployeeRepository;

  AdminEmployeeListBloc({required this.adminEmployeeRepository}) : super(const AdminEmployeeListState.initial()) {
    on<AdminEmployeeListEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(
          AdminEmployeeListEvent event, Emitter<AdminEmployeeListState> emit) =>
      event.map(fetchData: (e) => _fetchData(e,emit),
      changeSearchTerm: (e) => _changeSearchTerm(e, emit));

  Future<void> _fetchData(_FetchInitialDataEvent event, Emitter<AdminEmployeeListState> emit) async{
    final previousState = state;
    try{
      final tableData = await adminEmployeeRepository.listEmployees(page: event.page, elementsPerPage: event.elementsPerPage, searchTerm: state.searchTerm);
      emit(AdminEmployeeListState.loaded(tableData: tableData, searchTerm: state.searchTerm));
    }catch(e){
      emit(previousState);
    }
  }

  Future<void> _changeSearchTerm(_ChangeSearchTermEvent event, Emitter<AdminEmployeeListState> emit) async{
    emit(AdminEmployeeListState.loaded(tableData: state.tableData, searchTerm: event.searchTerm));
    add(AdminEmployeeListEvent.fetchData(page: 0, elementsPerPage: 5));
  }
}

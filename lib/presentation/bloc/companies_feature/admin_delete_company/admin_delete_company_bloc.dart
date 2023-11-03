import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/repositories/admin_company/admin_company_repository_contract.dart';

part 'admin_delete_company_event.dart';

part 'admin_delete_company_state.dart';

part 'admin_delete_company_bloc.freezed.dart';

class AdminDeleteCompanyBloc
    extends Bloc<AdminDeleteCompanyEvent, AdminDeleteCompanyState> {
  final AdminCompanyRepository adminCompanyRepository;
  AdminDeleteCompanyBloc({required this.adminCompanyRepository}) : super(const AdminDeleteCompanyState.initial()) {
    on<AdminDeleteCompanyEvent>(_mapEventToState, transformer: droppable());
  }

  Future<void> _mapEventToState(AdminDeleteCompanyEvent event,
          Emitter<AdminDeleteCompanyState> emit) =>
      event.map(deleteCompany: (e) => _deleteCompany(e, emit));

  Future<void> _deleteCompany(
      AdminDeleteCompanyEvent event, Emitter<AdminDeleteCompanyState> emit) async{
    emit(const AdminDeleteCompanyState.loading());
    try{
      await adminCompanyRepository.deleteCompany(companyUid: event.companyUid);
      emit(const AdminDeleteCompanyState.success());
      emit(const AdminDeleteCompanyState.initial());
    }catch(e){
      emit(const AdminDeleteCompanyState.fail());
      emit(const AdminDeleteCompanyState.initial());
    }
  }
}

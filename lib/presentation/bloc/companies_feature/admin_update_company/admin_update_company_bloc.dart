import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/core/constants/exceptions.dart';

import '../../../../domain/repositories/admin_company/admin_company_repository_contract.dart';

part 'admin_update_company_event.dart';
part 'admin_update_company_state.dart';
part 'admin_update_company_bloc.freezed.dart';

class AdminUpdateCompanyBloc extends Bloc<AdminUpdateCompanyEvent, AdminUpdateCompanyState> {
  final AdminCompanyRepository adminCompanyRepository;

  AdminUpdateCompanyBloc({required this.adminCompanyRepository}) : super(const AdminUpdateCompanyState.initial()) {
    on<AdminUpdateCompanyEvent>(_mapEventToState, transformer: droppable());
  }

  Future<void> _mapEventToState(AdminUpdateCompanyEvent event, Emitter<AdminUpdateCompanyState> emit) => event.map(updateCompany: (e) => _updateCompany(e, emit));

  Future<void> _updateCompany(_UpdateCompanyEvent event, Emitter<AdminUpdateCompanyState> emit) async{
    try {
      emit(const AdminUpdateCompanyState.loading());
      await adminCompanyRepository.updateCompany(
          companyName: event.companyName,
          photoBytes: event.photoBytes,
          photoName: event.photoName,
          uid: event.uid);
      emit(const AdminUpdateCompanyState.success());
    } on BadRequestException catch(_){
      emit(const AdminUpdateCompanyState.fail(code: "name-exists"));
    } catch (e) {
      emit(const AdminUpdateCompanyState.fail(code: "error"));
    } finally{
      await Future.delayed(const Duration(seconds: 3));
      emit(const AdminUpdateCompanyState.initial());
    }
  }
}

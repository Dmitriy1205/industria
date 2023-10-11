import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/repositories/admin_employee/admin_employee_repository_contract.dart';

part 'admin_delete_employee_event.dart';

part 'admin_delete_employee_state.dart';

part 'admin_delete_employee_bloc.freezed.dart';

class AdminDeleteEmployeeBloc
    extends Bloc<AdminDeleteEmployeeEvent, AdminDeleteEmployeeState> {
  final AdminEmployeeRepository adminEmployeeRepository;

  AdminDeleteEmployeeBloc({required this.adminEmployeeRepository})
      : super(const AdminDeleteEmployeeState.initial()) {
    on<AdminDeleteEmployeeEvent>(_mapEventToState, transformer: droppable());
  }

  Future<void> _mapEventToState(AdminDeleteEmployeeEvent event,
          Emitter<AdminDeleteEmployeeState> emit) =>
      event.map(deleteEmployee: (e) => _deleteEmployee(e, emit));

  Future<void> _deleteEmployee(_DeleteEmployeeEvent event,
      Emitter<AdminDeleteEmployeeState> emit) async {
    emit(const AdminDeleteEmployeeState.loading());
    try{
      await adminEmployeeRepository.deleteEmployee(userUid: event.userUid);
      emit(const AdminDeleteEmployeeState.success());
      emit(const AdminDeleteEmployeeState.initial());
    }catch(e){
      emit(const AdminDeleteEmployeeState.fail());
      emit(const AdminDeleteEmployeeState.initial());
    }
  }
}

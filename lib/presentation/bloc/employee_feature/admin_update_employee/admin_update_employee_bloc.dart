import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/repositories/admin_employee/admin_employee_repository_contract.dart';

part 'admin_update_employee_event.dart';

part 'admin_update_employee_state.dart';

part 'admin_update_employee_bloc.freezed.dart';

class AdminUpdateEmployeeBloc
    extends Bloc<AdminUpdateEmployeeEvent, AdminUpdateEmployeeState> {
  final AdminEmployeeRepository adminEmployeeRepository;

  AdminUpdateEmployeeBloc({required this.adminEmployeeRepository})
      : super(const AdminUpdateEmployeeState.initial()) {
    on<AdminUpdateEmployeeEvent>(_mapEventToState, transformer: droppable());
  }

  Future<void> _mapEventToState(AdminUpdateEmployeeEvent event,
          Emitter<AdminUpdateEmployeeState> emit) =>
      event.map(updateEmployee: (e) => _updateEmployee(e, emit));

  Future<void> _updateEmployee(_UpdateEmployeeEvent event,
      Emitter<AdminUpdateEmployeeState> emit) async {
    try {
      emit(const AdminUpdateEmployeeState.loading());
      await adminEmployeeRepository.updateEmployee(
          userUid: event.userUid,
          email: event.email,
          password: event.password,
          firstname: event.firstname,
          lastname: event.lastname,
          phoneNumber: event.phoneNumber,
          role: event.role,
          dateOfBirth: event.dateOfBirth,
          worksSince: event.worksSince,
          imgFilename: event.imgFilename,
          imgBytes: event.imgBytes);
      emit(const AdminUpdateEmployeeState.success());
      await Future.delayed(const Duration(seconds: 3));
      emit(const AdminUpdateEmployeeState.initial());
    } catch (e) {
      emit(const AdminUpdateEmployeeState.fail());
      await Future.delayed(const Duration(seconds: 3));
      emit(const AdminUpdateEmployeeState.initial());
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/repositories/admin_employee/admin_employee_repository_contract.dart';

part 'admin_create_employee_event.dart';

part 'admin_create_employee_state.dart';

part 'admin_create_employee_bloc.freezed.dart';

class AdminCreateEmployeeBloc
    extends Bloc<AdminCreateEmployeeEvent, AdminCreateEmployeeState> {
  final AdminEmployeeRepository adminEmployeeRepository;

  AdminCreateEmployeeBloc({required this.adminEmployeeRepository})
      : super(const AdminCreateEmployeeState.initial()) {
    on<AdminCreateEmployeeEvent>(_mapEventToState, transformer: droppable());
  }

  Future<void> _mapEventToState(AdminCreateEmployeeEvent event,
      Emitter<AdminCreateEmployeeState> emit) =>
      event.map(createEmployee: (e) => _createEmployee(e, emit));

  Future<void> _createEmployee(_CreateEmployeeEvent event,
      Emitter<AdminCreateEmployeeState> emit) async {
    try {
      emit(const AdminCreateEmployeeState.loading());
      await adminEmployeeRepository.createEmployee(
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
      await Future.delayed(const Duration(seconds: 3));
      emit(const AdminCreateEmployeeState.success());
      await Future.delayed(const Duration(seconds: 3));
      emit(const AdminCreateEmployeeState.initial());
    } catch (e) {
      emit(const AdminCreateEmployeeState.fail());
      await Future.delayed(const Duration(seconds: 3));
      emit(const AdminCreateEmployeeState.initial());
    }
  }
}
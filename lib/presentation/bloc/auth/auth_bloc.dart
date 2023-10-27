import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/domain/entities/employee/employee.dart';

import '../../../domain/repositories/auth/auth_repository_contract.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  late final StreamSubscription employeeSubscription;

  AuthBloc({required this.authRepository}) : super(const AuthState.initial()) {
    on<AuthEvent>(_mapEventToState);
    employeeSubscription = authRepository.employeeChanged.listen((user) {
      add(AuthEvent.employeeChanged(user: user));
    });
  }

  Future<void> _mapEventToState(AuthEvent event, Emitter<AuthState> emit) =>
      event.map(
          login: (e) => _login(e, emit),
          employeeChanged: (e) => _employeeChanged(e, emit),
          logout: (e) => _logout(e, emit));

  Future<void> _employeeChanged(
      _EmployeeChangedEvent event, Emitter<AuthState> emit) async {
    final user = event.user;
    if (user == null) {
      emit(const AuthState.unauthenticated());
    } else {
      emit(AuthState.authenticated(employee: event.user!));
    }
  }

  Future<void> _logout(
      _LogoutEvent event, Emitter<AuthState> emit) async {
    await authRepository.logout();
  }

  Future<void> _login(
      _LoginEvent event, Emitter<AuthState> emit) async {
    final previousState = state;
    try{
      await authRepository.signInAsEmployee(
          email: event.email, password: event.password);
    }catch(e){
      emit(const AuthState.authenticationFailed());
      emit(previousState);
    }
  }

  @override
  Future<void> close() {
    employeeSubscription.cancel();
    return super.close();
  }
}

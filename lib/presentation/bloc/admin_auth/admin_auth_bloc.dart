import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/domain/entities/employee/employee.dart';

import '../../../domain/repositories/auth/auth_repository_contract.dart';

part 'admin_auth_event.dart';

part 'admin_auth_state.dart';

part 'admin_auth_bloc.freezed.dart';

class AdminAuthBloc extends Bloc<AdminAuthEvent, AdminAuthState> {
  final AuthRepository authRepository;
  late final StreamSubscription adminSubscription;

  AdminAuthBloc({required this.authRepository}) : super(const AdminAuthState.initial()) {
    on<AdminAuthEvent>(_mapEventToState);
    adminSubscription = authRepository.adminChanged.listen((user) {
      add(AdminAuthEvent.adminChanged(user: user));
    });
  }

  Future<void> _mapEventToState(AdminAuthEvent event, Emitter<AdminAuthState> emit) =>
      event.map(
          login: (e) => _login(e, emit),
          adminChanged: (e) => _adminChanged(e, emit),
          logout: (e) => _logout(e, emit));


  Future<void> _adminChanged(
      _AdminChangedEvent event, Emitter<AdminAuthState> emit) async {
    final user = event.user;
    if (user == null) {
      emit(const AdminAuthState.unauthenticated());
    } else {
      emit(const AdminAuthState.authenticated());
    }
  }

  Future<void> _logout(
      _LogoutEvent event, Emitter<AdminAuthState> emit) async {
    await authRepository.logout();
  }

  Future<void> _login(
      _LoginEvent event, Emitter<AdminAuthState> emit) async {
    final previousState = state;
    try{
      await authRepository.signInAsAdmin(
          email: event.email, password: event.password);
    }catch(e){
      emit(const AdminAuthState.authenticationFailed());
      emit(previousState);
    }
  }

  @override
  Future<void> close() {
    adminSubscription.cancel();
    return super.close();
  }
}

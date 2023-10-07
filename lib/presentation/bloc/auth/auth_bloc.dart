import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/repositories/auth/auth_repository_contract.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  late final StreamSubscription subscription;

  AuthBloc({required this.authRepository}) : super(const AuthState.initial()) {
    on<AuthEvent>(_mapEventToState);
    subscription = authRepository.userChanges.listen((user) {
      add(AuthEvent.userChanged(user: user));
    });
  }

  Future<void> _mapEventToState(AuthEvent event, Emitter<AuthState> emit) =>
      event.map(
          loginAdminPanel: (e) => _loginAdminPanel(e, emit),
          userChanged: (e) => _userChanged(e, emit),
          logout: (e) => _logout(e, emit));

  Future<void> _userChanged(
      _UserChangedEvent event, Emitter<AuthState> emit) async {
    final user = event.user;
    if (user == null) {
      emit(const AuthState.unauthenticated());
    } else {
      emit(const AuthState.authenticated());
    }
  }

  Future<void> _logout(
      _LogoutEvent event, Emitter<AuthState> emit) async {
    await authRepository.logout();
  }

  Future<void> _loginAdminPanel(
      _LoginAdminPanelEvent event, Emitter<AuthState> emit) async {
    final previousState = state;
    try{
      await authRepository.signInAsAdmin(
          email: event.email, password: event.password);
    }catch(e){
      emit(const AuthState.authenticationFailed());
      emit(previousState);
    }
  }

  @override
  Future<void> close() {
    subscription.cancel();
    return super.close();
  }
}

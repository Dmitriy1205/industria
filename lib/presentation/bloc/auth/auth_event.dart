part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginAdminPanel({required String email, required String password}) = _LoginAdminPanelEvent;
  const factory AuthEvent.userChanged({required User? user}) = _UserChangedEvent;
  const factory AuthEvent.logout() = _LogoutEvent;
}

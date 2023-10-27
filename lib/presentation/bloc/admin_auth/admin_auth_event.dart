part of 'admin_auth_bloc.dart';

@freezed
class AdminAuthEvent with _$AdminAuthEvent {
  const factory AdminAuthEvent.login({required String email, required String password}) = _LoginEvent;
  const factory AdminAuthEvent.adminChanged({required User? user}) = _AdminChangedEvent;
  const factory AdminAuthEvent.logout() = _LogoutEvent;
}

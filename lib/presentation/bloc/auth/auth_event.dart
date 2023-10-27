part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required String email, required String password}) = _LoginEvent;
  const factory AuthEvent.employeeChanged({required Employee? user}) = _EmployeeChangedEvent;
  const factory AuthEvent.logout() = _LogoutEvent;
}

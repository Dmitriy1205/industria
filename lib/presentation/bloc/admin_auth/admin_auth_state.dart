part of 'admin_auth_bloc.dart';

@freezed
class AdminAuthState with _$AdminAuthState {
  const AdminAuthState._();

  bool get isUndefined => maybeMap(
      initial: (_) => true,
      orElse: () => false);

  bool get isAdminAuthenticated => maybeMap(
      authenticated: (_) => true,
      orElse: () => false);

  const factory AdminAuthState.initial() = _InitialState;
  const factory AdminAuthState.unauthenticated() = _UnauthenticatedState;
  const factory AdminAuthState.authenticated() = _AuthenticatedAdminState;
  const factory AdminAuthState.authenticationFailed() = _AuthenticationFailedState;
}

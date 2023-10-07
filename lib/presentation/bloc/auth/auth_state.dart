part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  bool get isUndefined => maybeMap(
      initial: (_) => true,
      orElse: () => false);

  bool get isAuthenticated => maybeMap(
      authenticated: (_) => true,
      orElse: () => false);

  const factory AuthState.initial() = _InitialState;
  const factory AuthState.unauthenticated() = _UnauthenticatedState;
  const factory AuthState.authenticated() = _AuthenticatedState;
  const factory AuthState.authenticationFailed() = _AuthenticationFailedState;
}

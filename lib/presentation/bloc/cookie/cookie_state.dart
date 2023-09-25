part of 'cookie_bloc.dart';

@freezed
class CookieState with _$CookieState {
  const CookieState._();

  bool get showCookieDialog => maybeMap(
      undefined: (state) => state.showDialog,
      orElse: () => false);

  const factory CookieState.undefined({required bool showDialog}) = _UndefinedState;
  const factory CookieState.resolved({required List<Cookies> acceptedCookies}) = _AcceptedState;
}

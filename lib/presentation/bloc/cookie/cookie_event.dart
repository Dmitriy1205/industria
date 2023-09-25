part of 'cookie_bloc.dart';

@freezed
class CookieEvent with _$CookieEvent {
  const factory CookieEvent.acceptAll() = _AcceptAllEvent;
  const factory CookieEvent.acceptSelected({required List<Cookies> acceptedCookies}) = _AcceptSelectedEvent;
  const factory CookieEvent.denyAll() = _DenyAllEvent;
  const factory CookieEvent.show() = _ShowEvent;
  const factory CookieEvent.hide() = _HideEvent;
}

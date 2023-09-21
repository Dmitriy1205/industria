import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/core/enums/cookies.dart';

import '../../../domain/cookie/cookie_repository_contract.dart';

part 'cookie_event.dart';

part 'cookie_state.dart';

part 'cookie_bloc.freezed.dart';

class CookieBloc extends Bloc<CookieEvent, CookieState> {
  final CookieRepository cookieRepository;

  CookieBloc(
      {required this.cookieRepository, required List<Cookies>? initialValue})
      : super(initialValue == null
            ? const CookieState.undefined(showDialog: true)
            : CookieState.resolved(acceptedCookies: initialValue)) {
    on<CookieEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(CookieEvent event, Emitter<CookieState> emit) =>
      event.map(
          acceptAll: (e) => _acceptAll(e, emit),
          acceptSelected: (e) => _acceptSelected(e, emit),
          denyAll: (e) => _denyAll(e, emit),
          show: (e) => _show(e, emit),
          hide: (e) => _hide(e, emit));

  Future<void> _acceptAll(
      _AcceptAllEvent event, Emitter<CookieState> emit) async {
    const cookies = Cookies.values;
    await cookieRepository.setCookies(cookies);
    emit(const CookieState.resolved(acceptedCookies: cookies));
  }

  Future<void> _show(_ShowEvent event, Emitter<CookieState> emit) async {
    state.maybeMap(
        undefined: (state) =>
            emit(const CookieState.undefined(showDialog: true)),
        orElse: () {});
  }

  Future<void> _hide(_HideEvent event, Emitter<CookieState> emit) async {
    state.maybeMap(
        undefined: (state) =>
            emit(const CookieState.undefined(showDialog: false)),
        orElse: () {});
  }

  Future<void> _acceptSelected(
      _AcceptSelectedEvent event, Emitter<CookieState> emit) async {
    final cookies = event.acceptedCookies;
    await cookieRepository.setCookies(cookies);
    emit(CookieState.resolved(acceptedCookies: cookies));
  }

  Future<void> _denyAll(_DenyAllEvent event, Emitter<CookieState> emit) async {
    const cookies = <Cookies>[];
    await cookieRepository.setCookies(cookies);
    emit(const CookieState.resolved(acceptedCookies: cookies));
  }
}

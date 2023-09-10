import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'localization_event.dart';

part 'localization_state.dart';

part 'localization_bloc.freezed.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc()
      : super(const LocalizationState.localize(locale: Locale('en'))) {
    on<LocalizationEvent>(_mapBlocToState);
  }

  Future<void> _mapBlocToState(
      LocalizationEvent event, Emitter<LocalizationState> emit) async {
    await event.map(changeLang: (e) => _changeLang(e, emit));
  }

  Future<void> _changeLang(
      _ChangeLang event, Emitter<LocalizationState> emit) async {
    emit(LocalizationState.localize(locale: event.locale));
  }
}

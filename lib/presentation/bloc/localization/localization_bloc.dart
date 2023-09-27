import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/repositories/language/language_repository_contract.dart';

part 'localization_event.dart';

part 'localization_state.dart';

part 'localization_bloc.freezed.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  final LanguageRepository languageRepository;
  LocalizationBloc({required this.languageRepository, required Locale initialLocale})
      : super(LocalizationState.localize(locale: initialLocale)) {
    on<LocalizationEvent>(_mapBlocToState);
  }

  Future<void> _mapBlocToState(
      LocalizationEvent event, Emitter<LocalizationState> emit) async {
    await event.map(changeLang: (e) => _changeLang(e, emit));
  }

  Future<void> _changeLang(
      _ChangeLang event, Emitter<LocalizationState> emit) async {
    languageRepository.setLocale(event.locale);
    emit(LocalizationState.localize(locale: event.locale));
  }
}

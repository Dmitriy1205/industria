part of 'localization_bloc.dart';

@freezed
class LocalizationState with _$LocalizationState {
  const LocalizationState._();

  @override
  Locale get locale => maybeMap(
        localize: (state) => state.locale,
        orElse: () => const Locale('en'),
      );

  const factory LocalizationState.localize({required Locale locale}) =
      _Localize;
}

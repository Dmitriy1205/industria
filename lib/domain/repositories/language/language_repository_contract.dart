import 'dart:ui';

abstract class LanguageRepository{
  Future<Locale> fetchLocale();
  Future<void> setLocale(Locale locale);
}
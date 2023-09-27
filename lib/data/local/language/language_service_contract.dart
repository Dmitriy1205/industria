import 'dart:ui';

import '../../../core/enums/cookies.dart';

abstract class LocaleService{
  Future<Locale> fetchLocale();
  Future<void> setLocale(Locale locale);
}
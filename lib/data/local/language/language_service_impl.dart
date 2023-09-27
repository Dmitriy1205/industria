import 'dart:ui';

import 'package:industria/core/enums/cookies.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'language_service_contract.dart';

const String _languageKey = 'language';

class LocaleServiceImpl implements LocaleService {
  final SharedPreferences sharedPreferences;
  const LocaleServiceImpl({
    required this.sharedPreferences,
  });

  @override
  Future<Locale> fetchLocale() async{
    final locale = sharedPreferences.getString(_languageKey);
    if (locale == null) return Locale("en");
    return switch(locale){
      "de" => Locale("de"),
      _ => Locale("en")
    };
  }

  @override
  Future<void> setLocale(Locale locale) async => await sharedPreferences.setString(
  _languageKey, locale.languageCode);
}


import 'dart:ui';

import 'package:industria/data/local/language/language_service_contract.dart';
import 'package:industria/domain/repositories/language/language_repository_contract.dart';

class LanguageRepositoryImpl implements LanguageRepository{
  final LocaleService db;

  @override
  Future<Locale> fetchLocale() => db.fetchLocale();

  @override
  Future<void> setLocale(Locale locale) => db.setLocale(locale);

  const LanguageRepositoryImpl({
    required this.db,
  });
}
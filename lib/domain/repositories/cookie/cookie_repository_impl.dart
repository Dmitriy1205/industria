import 'package:industria/core/enums/cookies.dart';

import '../../../data/local/cookie/cookie_service_contract.dart';
import 'cookie_repository_contract.dart';

class CookieRepositoryImpl implements CookieRepository{
  final CookieService db;

  @override
  Future<List<Cookies>?> fetchCookies() => db.fetchCookies();

  @override
  Future<void> setCookies(List<Cookies> cookies) => db.setCookies(cookies);

  const CookieRepositoryImpl({
    required this.db,
  });
}
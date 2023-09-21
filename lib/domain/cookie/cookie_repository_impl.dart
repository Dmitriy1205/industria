import 'package:industria/core/enums/cookies.dart';
import 'package:industria/data/cookie/cookie_service_contract.dart';
import 'package:industria/domain/cookie/cookie_repository_contract.dart';

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
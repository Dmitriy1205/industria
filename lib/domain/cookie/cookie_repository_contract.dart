import 'package:industria/core/enums/cookies.dart';

abstract class CookieRepository{
  ///Returns null if there's not cookies set
  Future<List<Cookies>?> fetchCookies();
  Future<void> setCookies(List<Cookies> cookies);
}
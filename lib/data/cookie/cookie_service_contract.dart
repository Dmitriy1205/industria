import '../../core/enums/cookies.dart';

abstract class CookieService{
  Future<List<Cookies>?> fetchCookies();
  Future<void> setCookies(List<Cookies> cookies);
}
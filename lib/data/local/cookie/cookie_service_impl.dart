import 'package:industria/core/enums/cookies.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'cookie_service_contract.dart';

const String _cookieKey = 'cookies';

class CookieServiceImpl implements CookieService {
  final SharedPreferences sharedPreferences;

  @override
  Future<List<Cookies>?> fetchCookies() async {
    final cookies = sharedPreferences.getStringList(_cookieKey);
    if (cookies == null) return null;
    return Cookies.fromList(cookies);
  }

  @override
  Future<void> setCookies(List<Cookies> cookies) async =>
      await sharedPreferences.setStringList(
          _cookieKey, Cookies.toList(cookies));

  const CookieServiceImpl({
    required this.sharedPreferences,
  });
}

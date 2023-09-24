import 'package:get_it/get_it.dart';
import 'package:industria/presentation/bloc/cookie/cookie_bloc.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/local/cookie/cookie_service_impl.dart';
import '../../domain/repositories/cookie/cookie_repository_contract.dart';
import '../../domain/repositories/cookie/cookie_repository_impl.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  await sharedPrefs.reload();
  final cookieRepository = CookieRepositoryImpl(
      db: CookieServiceImpl(
          sharedPreferences: sharedPrefs));
  final initialCookie = await cookieRepository.fetchCookies();
  sl.registerSingleton<CookieRepository>(cookieRepository);

  sl.registerLazySingleton(() => LocalizationBloc());
  sl.registerLazySingleton(() => CookieBloc(cookieRepository: sl<CookieRepository>(), initialValue: initialCookie));
}

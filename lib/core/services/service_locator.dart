import 'package:get_it/get_it.dart';
import 'package:industria/data/cookie/cookie_service_contract.dart';
import 'package:industria/data/cookie/cookie_service_impl.dart';
import 'package:industria/domain/cookie/cookie_repository_contract.dart';
import 'package:industria/domain/cookie/cookie_repository_impl.dart';
import 'package:industria/presentation/bloc/cookie/cookie_bloc.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final cookieRepository = CookieRepositoryImpl(
      db: CookieServiceImpl(
          sharedPreferences: await SharedPreferences.getInstance()));
  final initialCookie = await cookieRepository.fetchCookies();
  sl.registerSingleton<CookieRepository>(cookieRepository);

  sl.registerLazySingleton(() => LocalizationBloc());
  sl.registerLazySingleton(() => CookieBloc(cookieRepository: sl<CookieRepository>(), initialValue: initialCookie));
}

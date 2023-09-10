import 'package:get_it/get_it.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => LocalizationBloc());
}

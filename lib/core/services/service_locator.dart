import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:industria/data/remote/contact_requests/contact_requests_service_contract.dart';
import 'package:industria/data/remote/contact_requests/contact_requests_service_impl.dart';
import 'package:industria/data/remote/job/job_service_contract.dart';
import 'package:industria/data/remote/job/job_service_impl.dart';
import 'package:industria/domain/entities/contact_requests/contact_requests.dart';
import 'package:industria/domain/repositories/contact_request/contact_request_repository_contract.dart';
import 'package:industria/data/local/language/language_service_impl.dart';
import 'package:industria/data/remote/job_application/job_application_service_contract.dart';
import 'package:industria/data/remote/job_application/job_application_service_impl.dart';
import 'package:industria/domain/repositories/job/job_repository_contract.dart';
import 'package:industria/domain/repositories/job/job_repository_impl.dart';
import 'package:industria/domain/repositories/job_application/job_application_repository_contract.dart';
import 'package:industria/domain/repositories/job_application/job_application_repository_impl.dart';
import 'package:industria/domain/repositories/language/language_repository_impl.dart';
import 'package:industria/presentation/bloc/cookie/cookie_bloc.dart';
import 'package:industria/presentation/bloc/job_application/job_application_bloc.dart';
import 'package:industria/presentation/bloc/jobs/jobs_bloc.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/local/cookie/cookie_service_impl.dart';
import '../../domain/repositories/contact_request/contact_request_repository_impl.dart';
import '../../domain/repositories/cookie/cookie_repository_contract.dart';
import '../../domain/repositories/cookie/cookie_repository_impl.dart';

final sl = GetIt.instance;

Future<void> init() async {
  const Algolia algolia = Algolia.init(
    applicationId: 'B0THJNHAYO',
    apiKey: '395d64ccee025643177da71d694c34ec',
  );

  ///Fetching initial data before launching app
  final sharedPrefs = await SharedPreferences.getInstance();
  await sharedPrefs.reload();
  final cookieRepository = CookieRepositoryImpl(
      db: CookieServiceImpl(sharedPreferences: sharedPrefs));
  final contactRequests = ContactRequestsRepositoryImpl(
      db: ContactRequestsServiceImpl(
          db: FirebaseFirestore.instance, storage: FirebaseStorage.instance));
  final languageRepository = LanguageRepositoryImpl(db: LocaleServiceImpl(sharedPreferences: sharedPrefs));
  const jobRepository = JobRepositoryImpl(db: JobServiceImpl(algolia: algolia));
  final jobApplicationRepository = JobApplicationRepositoryImpl(db: JobApplicationServiceImpl(db: FirebaseFirestore.instance, storage: FirebaseStorage.instance));

  final initialCookie = await cookieRepository.fetchCookies();
  final initialLocale = await languageRepository.fetchLocale();

  ///Injecting
  sl.registerSingleton<CookieRepository>(cookieRepository);
  sl.registerSingleton<JobRepository>(jobRepository);
  sl.registerSingleton<ContactRequestsRepository>(contactRequests);
  sl.registerSingleton<JobApplicationRepository>(jobApplicationRepository);

  sl.registerLazySingleton(() => LocalizationBloc(initialLocale: initialLocale, languageRepository: languageRepository));
  sl.registerLazySingleton(() => CookieBloc(cookieRepository: sl<CookieRepository>(), initialValue: initialCookie));
  sl.registerLazySingleton(() => JobsBloc(jobRepository: jobRepository));
  sl.registerLazySingleton(() => JobApplicationBloc(jobApplicationRepository: jobApplicationRepository));
}

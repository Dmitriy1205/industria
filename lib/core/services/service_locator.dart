import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:industria/data/remote/admin_company/admin_company_service_impl.dart';
import 'package:industria/data/remote/admin_employee/admin_employee_service_impl.dart';
import 'package:industria/data/remote/admin_vacancy/admin_vacancy_service_impl.dart';
import 'package:industria/data/remote/attendance/attendance_service_impl.dart';
import 'package:industria/data/remote/admin_feedback/admin_feedback_service_impl.dart';
import 'package:industria/data/remote/attendance_graph/attendance_graph_service_contract.dart';
import 'package:industria/data/remote/contact_requests/contact_requests_service_impl.dart';
import 'package:industria/data/remote/employee_documents/employee_documents_service_impl.dart';
import 'package:industria/data/remote/holiday_requests/holiday_requests_service_impl.dart';
import 'package:industria/data/remote/job/job_service_impl.dart';
import 'package:industria/domain/repositories/admin_company/admin_company_repository_contract.dart';
import 'package:industria/domain/repositories/admin_company/admin_company_repository_impl.dart';
import 'package:industria/domain/repositories/admin_employee/admin_employee_repository_impl.dart';
import 'package:industria/domain/repositories/admin_vacancy/admin_vacancy_repository_impl.dart';
import 'package:industria/domain/repositories/attendance/attendance_repository_contract.dart';
import 'package:industria/domain/repositories/attendance/attendance_repository_impl.dart';
import 'package:industria/domain/repositories/admin_feedback/admin_feedback_repository_impl.dart';
import 'package:industria/domain/repositories/attendance_graph/attendance_graph_repository_contract.dart';
import 'package:industria/domain/repositories/attendance_graph/attendance_graph_repository_impl.dart';
import 'package:industria/domain/repositories/auth/auth_repository_contract.dart';
import 'package:industria/domain/repositories/auth/auth_repository_impl.dart';
import 'package:industria/domain/repositories/contact_request/contact_request_repository_contract.dart';
import 'package:industria/data/local/language/language_service_impl.dart';
import 'package:industria/data/remote/job_application/job_application_service_impl.dart';
import 'package:industria/domain/repositories/employee_documents/employee_documents_repository_contract.dart';
import 'package:industria/domain/repositories/employee_documents/employee_documents_repository_impl.dart';
import 'package:industria/domain/repositories/holiday_requests/holiday_requests_repository_contract.dart';
import 'package:industria/domain/repositories/holiday_requests/holiday_requests_repository_impl.dart';
import 'package:industria/domain/repositories/job/job_repository_contract.dart';
import 'package:industria/domain/repositories/job/job_repository_impl.dart';
import 'package:industria/domain/repositories/job_application/job_application_repository_contract.dart';
import 'package:industria/domain/repositories/job_application/job_application_repository_impl.dart';
import 'package:industria/domain/repositories/language/language_repository_impl.dart';
import 'package:industria/presentation/bloc/admin_auth/admin_auth_bloc.dart';
import 'package:industria/presentation/bloc/attendance/attendance_cubit.dart';
import 'package:industria/presentation/bloc/attendance_graph/attendance_graph_bloc.dart';
import 'package:industria/presentation/bloc/auth/auth_bloc.dart';
import 'package:industria/presentation/bloc/companies_feature/admin_companies_list/admin_companies_list_bloc.dart';
import 'package:industria/presentation/bloc/contact_requests/contact_request_bloc.dart';
import 'package:industria/presentation/bloc/cookie/cookie_bloc.dart';
import 'package:industria/presentation/bloc/create_report/create_report_bloc.dart';
import 'package:industria/presentation/bloc/delete_reports/delete_reports_bloc.dart';
import 'package:industria/presentation/bloc/employee_documents_feature/create_employee_document/create_employee_document_bloc.dart';
import 'package:industria/presentation/bloc/employee_documents_feature/delete_employee_document/delete_employee_document_bloc.dart';
import 'package:industria/presentation/bloc/employee_documents_feature/employee_documents/employee_documents_bloc.dart';
import 'package:industria/presentation/bloc/employee_feature/admin_employee_list/admin_employee_list_bloc.dart';
import 'package:industria/presentation/bloc/employee_weekly_report/employee_weekly_report_cubit.dart';
import 'package:industria/presentation/bloc/holiday_request_feature/admin_holiday_requests_list/admin_holiday_requests_list_bloc.dart';
import 'package:industria/presentation/bloc/feedback_feature/admin_feedback_list/admin_feedback_list_bloc.dart';
import 'package:industria/presentation/bloc/holiday_request_feature/viewReportCubit.dart';
import 'package:industria/presentation/bloc/jobs/jobs_bloc.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';
import 'package:industria/presentation/bloc/vacancies_feature/admin_vacancy_list/admin_vacancy_list_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/local/cookie/cookie_service_impl.dart';
import '../../data/remote/attendance_graph/attendance_graph_service_impl.dart';
import '../../domain/repositories/admin_employee/admin_employee_repository_contract.dart';
import '../../domain/repositories/admin_feedback/admin_feedback_repository_contract.dart';
import '../../domain/repositories/admin_vacancy/admin_vacancy_repository_contract.dart';
import '../../domain/repositories/contact_request/contact_request_repository_impl.dart';
import '../../domain/repositories/cookie/cookie_repository_contract.dart';
import '../../domain/repositories/cookie/cookie_repository_impl.dart';
import '../../presentation/bloc/feedback_feature/admin_delete_feedback/admin_delete_feedback_bloc.dart';
import '../../presentation/bloc/job_application_feature/admin_job_applications/admin_job_applications_bloc.dart';
import '../../presentation/bloc/job_application_feature/job_application/job_application_bloc.dart';
import '../../presentation/bloc/vacancies_feature/admin_create_vacancy/admin_create_vacancy_bloc.dart';
import '../../presentation/bloc/vacancies_feature/admin_delete_vacancy/admin_delete_vacancy_bloc.dart';
import '../../presentation/bloc/vacancies_feature/admin_update_vacancy/admin_update_vacancy_bloc.dart';

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
  final contactRequestsRepository = ContactRequestsRepositoryImpl(
      db: ContactRequestsServiceImpl(
          db: FirebaseFirestore.instance,
          storage: FirebaseStorage.instance,
          algolia: algolia));
  final languageRepository = LanguageRepositoryImpl(
      db: LocaleServiceImpl(sharedPreferences: sharedPrefs));
  final jobRepository = JobRepositoryImpl(
      db: JobServiceImpl(algolia: algolia, db: FirebaseFirestore.instance));
  final jobApplicationRepository = JobApplicationRepositoryImpl(
      db: JobApplicationServiceImpl(
          db: FirebaseFirestore.instance,
          storage: FirebaseStorage.instance,
          algolia: algolia));
  final authRepository = AuthRepositoryImpl(
      auth: FirebaseAuth.instance, db: FirebaseFirestore.instance);
  final employeeRepository = AdminEmployeeRepositoryImpl(
      adminEmployeeService: AdminEmployeeServiceImpl(
          db: FirebaseFirestore.instance, dio: Dio(), algolia: algolia));
  final holidayRequestsRepository = HolidayRequestsRepositoryImpl(
      db: HolidayRequestsServiceImpl(
          algolia: algolia, db: FirebaseFirestore.instance));
  final attendanceRepository = AttendanceRepositoryImpl(
      db: AttendanceServiceImpl(db: FirebaseFirestore.instance));
  final feedbackRepository = AdminFeedbackRepositoryImpl(
      adminFeedbackService: AdminFeedbackServiceImpl(
          dio: Dio(), db: FirebaseFirestore.instance, algolia: algolia));
  final adminVacancyRepository = AdminVacancyRepositoryImpl(
      adminVacancyService: AdminVacancyServiceImpl(
          dio: Dio(),
          db: FirebaseFirestore.instance,
          storage: FirebaseStorage.instance,
          algolia: algolia));
  final adminCompanyRepository = AdminCompanyRepositoryImpl(
      db: AdminCompanyServiceImpl(
          db: FirebaseFirestore.instance,
          algolia: algolia,
          storage: FirebaseStorage.instance));
  final employeeDocumentsRepository = EmployeeDocumentsRepositoryImpl(
      db: EmployeeDocumentsServiceImpl(
          db: FirebaseFirestore.instance, storage: FirebaseStorage.instance));

  final attendanceGraphRepository = AttendanceGraphRepositoryImpl(
      db: AttendanceGraphServiceImpl(db: FirebaseFirestore.instance));

  final initialCookie = await cookieRepository.fetchCookies();
  final initialLocale = await languageRepository.fetchLocale();

  ///Injecting
  sl.registerSingleton<CookieRepository>(cookieRepository);
  sl.registerSingleton<JobRepository>(jobRepository);
  sl.registerSingleton<AdminCompanyRepository>(adminCompanyRepository);
  sl.registerSingleton<ContactRequestsRepository>(contactRequestsRepository);
  sl.registerSingleton<JobApplicationRepository>(jobApplicationRepository);
  sl.registerSingleton<AuthRepository>(authRepository);
  sl.registerSingleton<AdminEmployeeRepository>(employeeRepository);
  sl.registerSingleton<HolidayRequestsRepository>(holidayRequestsRepository);
  sl.registerSingleton<AttendanceRepository>(attendanceRepository);
  sl.registerSingleton<AdminFeedbackRepository>(feedbackRepository);
  sl.registerSingleton<AdminVacancyRepository>(adminVacancyRepository);
  sl.registerSingleton<AttendanceGraphRepository>(attendanceGraphRepository);
  sl.registerSingleton<EmployeeDocumentsRepository>(
      employeeDocumentsRepository);

  sl.registerLazySingleton(() => AttendanceGraphBloc(
      attendanceGraphRepository: attendanceGraphRepository));
  sl.registerLazySingleton(() => LocalizationBloc(
      initialLocale: initialLocale, languageRepository: languageRepository));
  sl.registerLazySingleton(() => CookieBloc(
      cookieRepository: sl<CookieRepository>(), initialValue: initialCookie));
  sl.registerLazySingleton(() => JobsBloc(jobRepository: jobRepository));
  sl.registerLazySingleton(() =>
      JobApplicationBloc(jobApplicationRepository: jobApplicationRepository));
  sl.registerLazySingleton(() =>
      ContactRequestBloc(contactRequestsRepository: contactRequestsRepository));
  sl.registerLazySingleton(() => AuthBloc(authRepository: authRepository));
  sl.registerLazySingleton(() => AdminAuthBloc(authRepository: authRepository));
  sl.registerLazySingleton(() => AdminJobApplicationsBloc(
      jobApplicationRepository: jobApplicationRepository));
  sl.registerLazySingleton(() => AdminHolidayRequestsListBloc(
      holidayRequestsRepository: holidayRequestsRepository));
  sl.registerLazySingleton(
      () => AdminEmployeeListBloc(adminEmployeeRepository: employeeRepository));
  sl.registerLazySingleton(
      () => AdminFeedbackListBloc(adminFeedbackRepository: feedbackRepository));
  sl.registerLazySingleton(() =>
      AdminDeleteFeedbackBloc(adminFeedbackRepository: feedbackRepository));
  sl.registerLazySingleton(() =>
      AdminCompaniesListBloc(adminCompanyRepository: adminCompanyRepository));
  sl.registerLazySingleton(() =>
      AdminVacancyListBloc(adminVacancyRepository: adminVacancyRepository));
  sl.registerLazySingleton(() =>
      AdminCreateVacancyBloc(adminVacancyRepository: adminVacancyRepository));
  sl.registerLazySingleton(() =>
      AdminUpdateVacancyBloc(adminVacancyRepository: adminVacancyRepository));
  sl.registerLazySingleton(() =>
      AdminDeleteVacancyBloc(adminVacancyRepository: adminVacancyRepository));
  sl.registerLazySingleton(() =>
      CreateReportBloc(holidayRequestsRepository: holidayRequestsRepository));
  sl.registerLazySingleton(() => DeleteReportsBloc(
      holidayRequestsRepository: holidayRequestsRepository,
      adminHolidayRequestsListBloc: sl()));
  sl.registerLazySingleton(() =>
      ViewReportCubit(holidayRequestsRepository: holidayRequestsRepository));
  sl.registerLazySingleton(() =>
      EmployeeWeeklyReportCubit(attendanceRepository: attendanceRepository));
  sl.registerLazySingleton(() => DeleteEmployeeDocumentBloc(
      employeeDocumentsRepository: employeeDocumentsRepository));
  sl.registerLazySingleton(() => CreateEmployeeDocumentBloc(
      employeeDocumentsRepository: employeeDocumentsRepository));
  sl.registerLazySingleton(() => EmployeeDocumentsBloc(
      employeeDocumentsRepository: employeeDocumentsRepository));
}

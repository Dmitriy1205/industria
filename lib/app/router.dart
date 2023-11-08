import 'package:flutter/material.dart' hide Feedback;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/enums/job_areas.dart';
import 'package:industria/domain/entities/employee/employee.dart';
import 'package:industria/domain/entities/job_offer/job_offer.dart';
import 'package:industria/presentation/bloc/admin_auth/admin_auth_bloc.dart';
import 'package:industria/presentation/bloc/auth/auth_bloc.dart';
import 'package:industria/presentation/screens/admin/admin_companies.dart';
import 'package:industria/presentation/screens/admin/admin_feedbacks.dart';
import 'package:industria/presentation/screens/admin/admin_job_applications.dart';
import 'package:industria/presentation/screens/admin/admin_main_screen.dart';
import 'package:industria/presentation/screens/admin/admin_users.dart';
import 'package:industria/presentation/screens/admin/admin_vacancies.dart';
import 'package:industria/presentation/screens/admin/change_user_credentials.dart';
import 'package:industria/presentation/screens/admin/create_company.dart';
import 'package:industria/presentation/screens/admin/create_user_credentials.dart';
import 'package:industria/presentation/screens/admin/create_vacancy.dart';
import 'package:industria/presentation/screens/admin/update_company.dart';
import 'package:industria/presentation/screens/admin/update_vacancy.dart';
import 'package:industria/presentation/screens/admin/view_job_application.dart';
import 'package:industria/presentation/screens/admin/view_user_credentials.dart';
import 'package:industria/presentation/screens/admin/view_user_feddback.dart';
import 'package:industria/presentation/screens/admin/view_vacancy.dart';
import 'package:industria/presentation/screens/condition.dart';
import 'package:industria/presentation/screens/cookie.dart';
import 'package:industria/presentation/screens/data_protection.dart';
import 'package:industria/presentation/screens/employee/create_report.dart';
import 'package:industria/presentation/screens/employee/employee_home.dart';
import 'package:industria/presentation/screens/employee/employee_main_screen.dart';
import 'package:industria/presentation/screens/for_employees.dart';
import 'package:industria/presentation/screens/for_employers.dart';
import 'package:industria/presentation/screens/job_description.dart';
import 'package:industria/presentation/screens/jobs.dart';
import 'package:industria/presentation/screens/layouts/admin/admin_desktop_dashboard_layout.dart';
import 'package:industria/presentation/screens/main_screen.dart';
import 'package:industria/presentation/screens/employee/messaging.dart';
import 'package:industria/presentation/screens/our_team.dart';

import '../domain/entities/feedback/feedback.dart';
import '../presentation/screens/admin/admin_holidays.dart';
import '../presentation/screens/admin/admin_login.dart';
import '../presentation/screens/admin/view_holiday.dart';
import '../presentation/screens/contact.dart';
import '../presentation/screens/home.dart';
import '../presentation/screens/imprint.dart';
import '../presentation/screens/employee/reports.dart';

String? _authAdminRedirect(String fullPath, bool isAuthenticated) {
  if (fullPath == '/admin/login' && isAuthenticated) {
    return '/admin/users';
  } else if (fullPath.contains('/admin') &&
      fullPath != '/admin/login' &&
      !isAuthenticated) {
    return '/admin/login';
  }
  return null;
}

String? _authEmployeeRedirect(String fullPath, bool isAuthenticated) {
  if (fullPath == '/employees' && isAuthenticated) {
    return '/employees/home';
  } else if (fullPath.contains('/employees') && !isAuthenticated) {
    return '/employees';
  }
  return null;
}

final GoRouter router = GoRouter(
  redirect: (context, state) {
    if (state.uri.toString() == "/admin") {
      return "/admin/login";
    }
    bool isUndefined = context.read<AdminAuthBloc>().state.isUndefined;
    if (isUndefined) return null;
    bool isAdminAuthenticated =
        context.read<AdminAuthBloc>().state.isAdminAuthenticated;
    final adminRedirect = _authAdminRedirect(state.fullPath!, isAdminAuthenticated);
    if (adminRedirect != null) {
      return adminRedirect;
    }
    bool isEmployeeAuthenticated =
        context.read<AuthBloc>().state.isEmployeeAuthenticated;
    return _authEmployeeRedirect(state.fullPath!, isEmployeeAuthenticated);
  },
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (c, s) =>
          const MaterialPage(child: MainScreen(child: Home())),
    ),
    ShellRoute(routes: [
      GoRoute(
        path: '/employee/messaging',
        pageBuilder: (context, state) => pageTransition<void>(
          context: context,
          state: state,
          child: const Messaging(),
        ),
      ),
      GoRoute(
        path: '/employee/reports',
        pageBuilder: (context, state) => pageTransition<void>(
          context: context,
          state: state,
          child: const Reports(),
        ),
      ),
      GoRoute(
        path: '/employee/create_report',
        pageBuilder: (context, state) => pageTransition<void>(
          context: context,
          state: state,
          child: const CreateReport(),
        ),
      ),
      GoRoute(
        path: '/employees/home',
        pageBuilder: (c, s) =>
        const MaterialPage(child: EmployeeHome()),
      ),
    ], builder: (context, state, child){
      return Scaffold(
        body: EmployeeMainScreen(
          child: child,
        ),
      );
    }),
    ShellRoute(
      builder: (context, state, child) => Scaffold(
        body: AdminMainScreen(
          child: AdminDesktopDashboardLayout(
            isLoginScreen: state.fullPath != '/admin/login',
            child: child,
          ),
        ),
      ),
      routes: [
        GoRoute(
          path: '/admin/view_job_application',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: ViewJobApplication(),
          ),
        ),
        GoRoute(
          path: '/admin/login',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const AdminLogin(),
          ),
        ),
        GoRoute(
          path: '/admin/companies',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const AdminCompanies(),
          ),
        ),
        GoRoute(
          path: '/admin/users',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const AdminUsers(),
          ),
        ),
        GoRoute(
          path: '/admin/user',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: ChangeUserCredentials(),
          ),
        ),
        GoRoute(
          path: '/admin/create_user',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: CreateUserCredentials(),
          ),
        ),
        GoRoute(
          path: '/admin/view_user',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: ViewUserCredentials(),
          ),
        ),
        GoRoute(
          path: '/admin/job_applications',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const AdminJobApplications(),
          ),
        ),
        GoRoute(
          path: '/admin/feedbacks',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const AdminFeedbacks(),
          ),
        ),
        GoRoute(
          path: '/admin/view_feedback',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: ViewUserFeedback(),
          ),
        ),
        GoRoute(
          path: '/admin/vacancies',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const AdminVacancies(),
          ),
        ),
        GoRoute(
          path: '/admin/create_vacancy',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: CreateVacancy(),
          ),
        ),
        GoRoute(
          path: '/admin/edit_vacancy',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const UpdateVacancy(),
          ),
        ),
        GoRoute(
          path: '/admin/holiday',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: ViewHoliday(),
          ),
        ),
        GoRoute(
          path: '/admin/holidays',
          pageBuilder: (context, state) => fadePageTransition<void>(
            context: context,
            state: state,
            child: AdminHolidays(),
          ),
        ),
        GoRoute(
          path: '/admin/view_vacancy',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const ViewVacancy(),
          ),
        ),
        GoRoute(
          path: '/admin/create_company',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const CreateCompany(),
          ),
        ),
        GoRoute(
          path: '/admin/update_company',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const UpdateCompany(),
          ),
        ),
      ],
    ),
    ShellRoute(
      builder: (context, state, child) => Scaffold(
        body: MainScreen(
          child: child,
        ),
      ),
      routes: [
        GoRoute(
          path: '/home',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const Home(),
          ),
        ),
        GoRoute(
          path: '/jobs',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: Jobs(
              area: state.uri.queryParameters["area"] == null ? null : JobAreas.fromString(state.uri.queryParameters["area"]!),
              initialCountry: state.uri.queryParameters["country"],
              initialKeyword: state.uri.queryParameters["keyword"] ?? "",
            ),
          ),
        ),
        GoRoute(
          path: '/contact',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: Contact(),
          ),
        ),
        GoRoute(
          path: '/employers',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const ForEmployers(),
          ),
        ),
        GoRoute(
          path: '/employees',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const ForEmployees(),
          ),
        ),
        GoRoute(
          path: '/ourteam',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const OurTeam(),
          ),
        ),
        GoRoute(
          path: '/dataprotection',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const DataProtection(),
          ),
        ),
        GoRoute(
          path: '/imprint',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const Imprint(),
          ),
        ),
        GoRoute(
          path: '/cookie',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const Cookie(),
          ),
        ),
        GoRoute(
          path: '/condition',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: const Condition(),
          ),
        ),
        GoRoute(
          path: '/job_description',
          pageBuilder: (context, state) => pageTransition<void>(
            context: context,
            state: state,
            child: JobDescription(),
          ),
        ),

        // ShellRoute(routes: [
        //   GoRoute(
        //     path: '/employees/create_report',
        //     pageBuilder: (c, s) =>
        //     const MaterialPage(child: CreateReport()),
        //   ),
        // ], builder: (context, state, child){
        //   return Scaffold(
        //     body: EmployeeMainScreen(
        //       child: child,
        //     ),
        //   );
        // }),
      ],
    ),
  ],
);

CustomTransitionPage fadePageTransition<T>({
  Key? key,
  String? restorationId,
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    restorationId: restorationId,
    key: state.pageKey,
    child: child,
    transitionDuration: Duration(milliseconds: 400),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = 0.0;
      const end = 1.0;
      const curve = Curves.ease;
      final tween =
          Tween(begin: begin, end: end).chain(Tween(begin: end, end: begin));
      final curvedAnimation = CurvedAnimation(
        parent: secondaryAnimation,
        curve: curve,
      );
      return FadeTransition(
        opacity: tween.animate(curvedAnimation),
        child: child,
      );
    },
  );
}

CustomTransitionPage pageTransition<T>({
  Key? key,
  String? restorationId,
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    restorationId: restorationId,
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0, 0);
      const end = Offset.zero;
      const curve = Curves.ease;
      final tween = Tween(begin: begin, end: end);
      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: curve,
      );
      return SlideTransition(
        position: tween.animate(curvedAnimation),
        child: child,
      );
    },
  );
}

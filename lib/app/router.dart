import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/domain/entities/job_offer/job_offer.dart';
import 'package:industria/presentation/bloc/auth/auth_bloc.dart';
import 'package:industria/presentation/screens/admin/admin_main_screen.dart';
import 'package:industria/presentation/screens/admin/admin_users.dart';
import 'package:industria/presentation/screens/condition.dart';
import 'package:industria/presentation/screens/cookie.dart';
import 'package:industria/presentation/screens/data_protection.dart';
import 'package:industria/presentation/screens/for_employees.dart';
import 'package:industria/presentation/screens/for_employers.dart';
import 'package:industria/presentation/screens/job_description.dart';
import 'package:industria/presentation/screens/jobs.dart';
import 'package:industria/presentation/screens/main_screen.dart';
import 'package:industria/presentation/screens/our_team.dart';

import '../core/services/service_locator.dart';
import '../presentation/screens/admin/admin_login.dart';
import '../presentation/screens/contact.dart';
import '../presentation/screens/home.dart';
import '../presentation/screens/imprint.dart';

String? _authRedirect(String fullPath, bool isAuthenticated){
  if(fullPath == '/admin/login' && isAuthenticated){
    return '/admin/users';
  }else if(fullPath.contains('/admin') && fullPath != '/admin/login' && !isAuthenticated){
    return '/admin/login';
  }
  return null;
}
final GoRouter router = GoRouter(
  redirect: (context, state) {
    bool isAuthenticated = context.read<AuthBloc>().state.isAuthenticated;
    return _authRedirect(state.fullPath!, isAuthenticated);
  },
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (c, s) =>
          const MaterialPage(child: MainScreen(child: Home())),
    ),
    ShellRoute(
        builder: (context, state, child) => Scaffold(
              body: AdminMainScreen(
                child: child,
              ),
            ),
        routes: [
          GoRoute(
            path: '/admin/login',
            pageBuilder: (context, state) => pageTransition<void>(
              context: context,
              state: state,
              child: const AdminLogin(),
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
        ]),
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
            child: JobDescription(
              job: state.extra as JobOffer,
            ),
          ),
        ),
      ],
    ),
  ],
);

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

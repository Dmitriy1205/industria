import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:industria/presentation/bloc/auth/auth_bloc.dart';
import 'package:industria/presentation/bloc/cookie/cookie_bloc.dart';
import 'package:industria/presentation/bloc/employee_feature/admin_employee_list/admin_employee_list_bloc.dart';
import 'package:industria/presentation/bloc/feedback_feature/admin_feedback_list/admin_feedback_list_bloc.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';

import '../core/services/service_locator.dart';
import '../presentation/bloc/job_application_feature/admin_job_applications/admin_job_applications_bloc.dart';

class Providers extends StatelessWidget {
  final Widget child;

  const Providers({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<LocalizationBloc>(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => sl<CookieBloc>(),
          lazy: false,
        ),
        BlocProvider(create: (context) => sl<AuthBloc>()),
        BlocProvider(create: (context) => sl<AdminEmployeeListBloc>()),
        BlocProvider(create: (context) => sl<AdminJobApplicationsBloc>()),
        BlocProvider(create: (context) => sl<AdminFeedbackListBloc>()),
      ],
      child: child,
    );
  }
}

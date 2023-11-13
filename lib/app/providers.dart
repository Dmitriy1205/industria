import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:industria/presentation/bloc/admin_auth/admin_auth_bloc.dart';
import 'package:industria/presentation/bloc/attendance_graph/attendance_graph_bloc.dart';
import 'package:industria/presentation/bloc/auth/auth_bloc.dart';
import 'package:industria/presentation/bloc/cookie/cookie_bloc.dart';
import 'package:industria/presentation/bloc/employee_feature/admin_employee_list/admin_employee_list_bloc.dart';
import 'package:industria/presentation/bloc/holiday_request_feature/admin_holiday_requests_list/admin_holiday_requests_list_bloc.dart';
import 'package:industria/presentation/bloc/feedback_feature/admin_feedback_list/admin_feedback_list_bloc.dart';
import 'package:industria/presentation/bloc/jobs/jobs_bloc.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';

import '../core/services/service_locator.dart';
import '../presentation/bloc/companies_feature/admin_companies_list/admin_companies_list_bloc.dart';
import '../presentation/bloc/feedback_feature/admin_delete_feedback/admin_delete_feedback_bloc.dart';
import '../presentation/bloc/job_application_feature/admin_job_applications/admin_job_applications_bloc.dart';
import '../presentation/bloc/vacancies_feature/admin_delete_vacancy/admin_delete_vacancy_bloc.dart';
import '../presentation/bloc/vacancies_feature/admin_vacancy_list/admin_vacancy_list_bloc.dart';

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
        BlocProvider(create: (context) => sl<AdminCompaniesListBloc>()),
        BlocProvider(create: (context) => sl<AuthBloc>()),
        BlocProvider(create: (context) => sl<JobsBloc>()),
        BlocProvider(create: (context) => sl<AdminAuthBloc>()),
        BlocProvider(create: (context) => sl<AdminEmployeeListBloc>()),
        BlocProvider(create: (context) => sl<AdminJobApplicationsBloc>()),
        BlocProvider(create: (context) => sl<AdminHolidayRequestsListBloc>()),
        BlocProvider(create: (context) => sl<AdminFeedbackListBloc>()),
        BlocProvider(create: (context) => sl<AdminDeleteFeedbackBloc>()),
        BlocProvider(create: (context) => sl<AdminVacancyListBloc>()),
        BlocProvider(create: (context) => sl<AdminDeleteVacancyBloc>()),
        BlocProvider(create: (context) => sl<AttendanceGraphBloc>())
      ],
      child: child,
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/domain/entities/vacancy/vacancy.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';
import 'package:industria/presentation/widgets/bold_text_widget.dart';

import '../../../core/services/service_locator.dart';
import '../../../core/utils/route_value.dart';
import '../../../domain/repositories/admin_vacancy/admin_vacancy_repository_contract.dart';
import '../../bloc/vacancies_feature/admin_view_vacancy/admin_view_vacancy_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ViewVacancy extends StatefulWidget {
  const ViewVacancy({
    Key? key,
  }) : super(key: key);

  @override
  State<ViewVacancy> createState() => _ViewVacancyState();
}

class _ViewVacancyState extends State<ViewVacancy> {
  final _adminViewVacancyCubit = AdminViewVacancyCubit(
      adminVacancyRepository: sl<AdminVacancyRepository>());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final paramValue = routeValue(context, "id");
      if (paramValue != null) {
        _adminViewVacancyCubit.fetchVacancyById(paramValue);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminViewVacancyCubit, Vacancy?>(
      bloc: _adminViewVacancyCubit,
      builder: (context, state) => state == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1100),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 26,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            AppLocalizations.of(context)!.vacancy,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " / ${AppLocalizations.of(context)!.view}",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 34,
                      ),
                      IntrinsicHeight(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.salary,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.darkGrey),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          state.salary,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 106,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.jobType,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.darkGrey),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          state.jobType,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 28,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                    AppLocalizations.of(context)!.location,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.darkGrey),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      state.location,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 22,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.description,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.darkGrey),
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    BoldTextWidget(
                                      text: state.description,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.questions,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.darkGrey),
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    ...state.questions.map((e) => Text(
                                      e,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),).toList()
                                  ],
                                ),
                                const SizedBox(
                                  height: 59,
                                ),
                                Container(
                                  height: 1,
                                  width: double.infinity,
                                  color: AppColors.lightGrey,
                                ),
                                const SizedBox(
                                  height: 19,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.vacancy,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.darkGrey),
                                        ),
                                        SizedBox(
                                          height: 13,
                                        ),
                                        Text(
                                          state.title,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.mainAccent),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 120,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.company,
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.darkGrey),
                                        ),
                                        SizedBox(
                                          height: 13,
                                        ),
                                        Text(
                                          state.companyName,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.mainAccent),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      state.createdAt.formattedTexted(context.watch<LocalizationBloc>().state.locale),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 35,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Feedback;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/domain/repositories/admin_feedback/admin_feedback_repository_contract.dart';
import 'package:industria/presentation/bloc/feedback_feature/admin_view_feedback/admin_view_feedback_cubit.dart';
import 'package:intl/intl.dart';

import '../../../app/router.dart';
import '../../../core/services/service_locator.dart';
import '../../../core/utils/route_value.dart';
import '../../../domain/entities/feedback/feedback.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ViewUserFeedback extends StatefulWidget {
  const ViewUserFeedback({Key? key}) : super(key: key);

  @override
  State<ViewUserFeedback> createState() => _ViewUserFeedbackState();
}

class _ViewUserFeedbackState extends State<ViewUserFeedback> {
  final _adminViewFeedbackCubit = AdminViewFeedbackCubit(
      adminFeedbackRepository: sl<AdminFeedbackRepository>());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final paramValue = routeValue(context, "id");
      if (paramValue != null) {
        _adminViewFeedbackCubit.fetchFeedbackById(paramValue);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminViewFeedbackCubit, Feedback?>(
      bloc: _adminViewFeedbackCubit,
      builder: (context, state) => state == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 800),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 26,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                router.go('/admin/feedbacks');
                              },
                              child: const Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.black,
                                size: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            AppLocalizations.of(context)!.feedback,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            '${DateFormat.Hm().format(state.createdAt)} | ${DateFormat.yMMMMd().format(state.createdAt)}',
                            style: const TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      IntrinsicHeight(
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "${AppLocalizations.of(context)!.from}: ",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              "${state.firstname} ${state.lastname}",
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "${AppLocalizations.of(context)!.company}: ",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              state.companyName,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "${AppLocalizations.of(context)!.phoneNumber}: ",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              state.phoneNumber,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 21,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: AppColors.lightGrey,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 30, left: 30, bottom: 40, top: 22),
                                child: Text(
                                  state.description,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ),
                            ],
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

import 'package:flutter/material.dart' hide Feedback;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/presentation/bloc/feedback_feature/admin_delete_feedback/admin_delete_feedback_bloc.dart';
import 'package:industria/presentation/widgets/custom_checkbox.dart';
import 'package:intl/intl.dart';
import 'package:pandas_tableview/p_tableview.dart';

import '../../../core/constants/colors.dart';
import '../../../core/themes/theme.dart';
import '../../../core/utils/toast.dart';
import '../../../domain/entities/feedback/feedback.dart';
import '../../bloc/feedback_feature/admin_feedback_list/admin_feedback_list_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AdminFeedbacks extends StatefulWidget {
  const AdminFeedbacks({Key? key}) : super(key: key);

  @override
  State<AdminFeedbacks> createState() => _AdminFeedbacksState();
}

class _AdminFeedbacksState extends State<AdminFeedbacks> {
  List<bool> checkable = [];
  List<Feedback> feedback = [];

  @override
  void initState() {
    super.initState();
    if (context.read<AdminFeedbackListBloc>().state.tableData.element.isEmpty) {
      context.read<AdminFeedbackListBloc>().add(
          const AdminFeedbackListEvent.fetchData(elementsPerPage: 7, page: 0));
    }
  }


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    feedback = context
        .read<AdminFeedbackListBloc>()
        .state
        .tableData
        .element;
    checkable = List.generate(
        context
            .read<AdminFeedbackListBloc>()
            .state
            .tableData
            .totalElementCounts,
            (index) => false);
  }

  void toggleAllCheckboxes(bool newValue) {
    setState(() {
      checkable.fillRange(0, checkable.length, newValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AdminDeleteFeedbackBloc, AdminDeleteFeedbackState>(
      listener: (context, state) {
        state.maybeMap(
            loading: (_) {
              showProgressSnackBar(context, "Deleting feedback ...");
            },
            success: (_) {
              showSuccessSnackBar(context, "Successfully deleted feedback");
              context.read<AdminFeedbackListBloc>().add(
                  const AdminFeedbackListEvent.fetchData(
                      page: 0, elementsPerPage: 5));
            },
            fail: (e) {
              showErrorSnackBar(context, "Failed to delete feedback");
            },
            orElse: () {});
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(width: 16,),
                _tableTitle(
                    title: AppLocalizations.of(context)!.feedbacks,
                    subtitle: context
                        .watch<AdminFeedbackListBloc>()
                        .state
                        .tableData
                        .totalElementCounts
                        .toString()),
                const SizedBox(
                  width: 60,
                ),
              ],
            ),
            checkable.contains(true)
                ? Padding(
                    padding: const EdgeInsets.only(
                      top: 22.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                            '${checkable.where((value) => value).length == context.read<AdminFeedbackListBloc>().state.tableData.totalElementCounts ? "All" : checkable.where((value) => value).length} selected',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.darkGrey,
                            )),
                        const SizedBox(
                          width: 25,
                        ),
                        TextButton(
                          onPressed: () {
                            deleteBucketDialog(context,
                                text:
                                    'Are you sure you want to delete feedback?',
                                feedbacks: feedback,
                                checkable: checkable);
                          },
                          child: Text(
                            checkable.where((value) => value).length ==
                                    context
                                        .read<AdminFeedbackListBloc>()
                                        .state
                                        .tableData
                                        .totalElementCounts
                                ? 'Delete All'
                                : 'Delete Selected',
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.red,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.red),
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox(),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: PTableView(
                pagination: PTableViewPagination(
                  currentPage: context
                      .watch<AdminFeedbackListBloc>()
                      .state
                      .tableData
                      .currentPage,
                  pagesCount: context
                      .watch<AdminFeedbackListBloc>()
                      .state
                      .tableData
                      .numberOfPages,
                  onPageChanged: (i) {
                    context.read<AdminFeedbackListBloc>().add(
                        AdminFeedbackListEvent.fetchData(
                            page: i, elementsPerPage: 5));
                  },
                ),
                fixedHeight: 500,
                borderRadius: BorderRadius.circular(4),
                headerHeight: 45,
                header: PTableViewHeader(
                  contentPadding: EdgeInsets.symmetric(horizontal: 18),
                  backgroundColor: Color(0xFFF1F1F1),
                  rows: [
                    PTableViewRowFixed(
                      width: 530,
                      child: Row(
                        children: [
                          CustomCheckbox(
                              value: checkable.every((value) => value == true),
                              onChanged: (v) {
                                toggleAllCheckboxes(v!);
                              }),
                          const SizedBox(
                            width: 21,
                          ),
                          Text(
                            AppLocalizations.of(context)!.message.toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    PTableViewRowFixed(
                        width: 370,
                        child: Center(
                          child: Text(
                            AppLocalizations.of(context)!.from.toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                        )),
                    PTableViewRowFixed(
                        width: 300,
                        child: Text(
                          AppLocalizations.of(context)!.date,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        )),
                  ],
                ),
                content: PTableViewContent(
                    onTap: (i) {
                      context.go("/admin/view_feedback?id=${context
                          .read<AdminFeedbackListBloc>()
                          .state
                          .tableData
                          .element[i].id}");
                    },
                    divider: BorderSide(
                      width: 1,
                      color: AppColors.lightGrey,
                    ),
                    backgroundColor: Colors.white,
                    horizontalPadding: 17,
                    columns: context
                        .watch<AdminFeedbackListBloc>()
                        .state
                        .tableData
                        .element
                        .asMap()
                        .entries
                        .map((e) => _feedbackList(
                            feedback: e.value,
                            index: e.key,
                            checkable: checkable))
                        .toList()),
              ),
            )
          ],
        ),
      ),
    );
  }

  PTableViewColumn _feedbackList(
      {required Feedback feedback,
      required int index,
      required List<bool> checkable}) {
    return PTableViewColumn(rows: [
      PTableViewRowFixed(
          width: 695,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(right: 38.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomCheckbox(
                      value: checkable[index],
                      onChanged: (v) {
                        setState(() {
                          checkable[index] = v!;
                        });
                      }),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Text(
                      feedback.description,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          )),
      PTableViewRowFixed(
          width: 201,
          child: SizedBox(
            height: 60,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "${feedback.firstname} ${feedback.lastname}",
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )),
      PTableViewRowFixed(
          width: 282,
          child: SizedBox(
            height: 60,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '${DateFormat.Hm().format(feedback.createdAt)} | ${DateFormat.yMMMMd().format(feedback.createdAt)}',
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )),
    ]);
  }
}

Widget _tableTitle({required String title, required String subtitle}) {
  return SizedBox(
    height: 25,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 1,
          height: double.infinity,
          color: AppColors.darkGrey,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          subtitle,
          style: const TextStyle(
              color: AppColors.darkGrey, fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}

deleteBucketDialog(BuildContext context,
    {required String text,
    required List<Feedback>? feedbacks,
    required List<bool>? checkable}) {
  Widget cancelButton = TextButton(
    child: const Text(
      'Cancel',
      style: TextStyle(color: AppColors.red),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = TextButton(
    child: const Text(
      'Delete',
      style: TextStyle(color: AppColors.mainAccent),
    ),
    onPressed: () {
      context
          .read<AdminDeleteFeedbackBloc>()
          .add(AdminDeleteFeedbackEvent.deleteFeedback(feedbackId: feedbacks!));
      Navigator.pop(context);
    },
  );
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    title: Text('Warning', style: AppTheme.themeData.textTheme.titleSmall),
    content: Text(text, style: AppTheme.themeData.textTheme.bodySmall),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  showDialog(
    useRootNavigator: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

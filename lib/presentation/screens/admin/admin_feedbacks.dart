import 'package:flutter/material.dart' hide Feedback;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/presentation/widgets/custom_checkbox.dart';
import 'package:intl/intl.dart';
import 'package:pandas_tableview/p_tableview.dart';

import '../../../core/constants/colors.dart';
import '../../../domain/entities/feedback/feedback.dart';
import '../../bloc/feedback_feature/admin_feedback_list/admin_feedback_list_bloc.dart';
import '../../widgets/firebase_image.dart';

class AdminFeedbacks extends StatefulWidget {
  const AdminFeedbacks({Key? key}) : super(key: key);

  @override
  State<AdminFeedbacks> createState() => _AdminFeedbacksState();
}

class _AdminFeedbacksState extends State<AdminFeedbacks> {
  @override
  void initState() {
    super.initState();
    if (context.read<AdminFeedbackListBloc>().state.tableData.element.isEmpty) {
      context.read<AdminFeedbackListBloc>().add(
          const AdminFeedbackListEvent.fetchData(elementsPerPage: 7, page: 0));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 52,
          child: Row(
            children: [
              SizedBox(width: 16,),
              _tableTitle(
                  title: 'Feedbacks',
                  subtitle: context
                      .watch<AdminFeedbackListBloc>()
                      .state
                      .tableData
                      .totalElementCounts
                      .toString()),
              const SizedBox(
                width: 60,
              ),
              const SizedBox(
                width: 60,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
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
                      CustomCheckbox(value: false, onChanged: (v) {}),
                      const SizedBox(
                        width: 21,
                      ),
                      const Text(
                        "MESSAGE",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const PTableViewRowFixed(
                    width: 370,
                    child: Center(
                      child: Text(
                        "FROM",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                    )),
                const PTableViewRowFixed(
                    width: 300,
                    child: Text(
                      "DATE",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12),
                    )),
              ],
            ),
            content: PTableViewContent(
                onTap: (i) {
                  context.go("/admin/view_feedback", extra: context
                      .read<AdminFeedbackListBloc>()
                      .state
                      .tableData
                      .element[i]);
                },
                divider: Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
                backgroundColor: Colors.white,
                horizontalPadding: 17,
                columns: context
                    .watch<AdminFeedbackListBloc>()
                    .state
                    .tableData
                    .element
                    .map((e) => _employeesList(feedback: e))
                    .toList()),
          ),
        )
      ],
    );
  }
}

PTableViewColumn _employeesList({required Feedback feedback}) {
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
                CustomCheckbox(value: false, onChanged: (v) {}),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Text(
                    feedback.description,
                    style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 12),
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
              style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 14),
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
              style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        )),
  ]);
}

Widget _tableAction(
    {required String title,
    required IconData icon,
    required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: SelectionContainer.disabled(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Row(
          children: [
            Icon(
              icon,
              size: 18,
              color: AppColors.darkGrey,
            ),
            const SizedBox(
              width: 14,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w500, color: AppColors.darkGrey),
            )
          ],
        ),
      ),
    ),
  );
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

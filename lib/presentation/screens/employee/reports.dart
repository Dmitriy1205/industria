import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:pandas_tableview/p_tableview.dart';
import '../../../core/constants/colors.dart';
import '../../../core/services/service_locator.dart';
import '../../../core/themes/theme.dart';
import '../../../core/utils/toast.dart';
import '../../../domain/entities/holiday_request/holiday_request.dart';
import '../../bloc/delete_reports/delete_reports_bloc.dart';
import '../../bloc/holiday_request_feature/admin_holiday_requests_list/admin_holiday_requests_list_bloc.dart';
import '../../bloc/localization/localization_bloc.dart';
import '../../widgets/app_elevated_button.dart';
import '../../widgets/custom_checkbox.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  int currentPage = 0;
  bool _isVisible = false;
  Set<String> selected = {};
  List<HolidayRequest> listReports = [];
  List<String> idReports = [];
  List checkable = [];
  bool value = false;
  DeleteReportsBloc deleteReportsBloc = sl<DeleteReportsBloc>();
  bool useFutureOnce = true;

  @override
  void initState() {
    super.initState();
    context.read<AdminHolidayRequestsListBloc>().add(
        const AdminHolidayRequestsListEvent.fetchData(
            elementsPerPage: 7, page: 0));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    listReports =
        context.watch<AdminHolidayRequestsListBloc>().state.tableData.element;
    idReports = [];
    listReports.forEach((element) {
      idReports.add(element.id);
    });
    if (useFutureOnce) {
      Future.delayed(Duration(seconds: 1), () {
        context.read<AdminHolidayRequestsListBloc>().add(
            const AdminHolidayRequestsListEvent.fetchData(
                elementsPerPage: 7, page: 0));
      });
      useFutureOnce = false;
      selected.clear();
      value = false;
      _isVisible = false;
    }

  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.background,
      child: BlocConsumer<DeleteReportsBloc, DeleteReportsState>(
          bloc: deleteReportsBloc,
          listener: (context, DeleteReportsState state) {
            state.maybeMap(
              success: (_) {
                showSuccessSnackBar(context, "Report deleted successfully!");
                Future.delayed(
                  Duration(seconds: 1),
                  () => context.read<AdminHolidayRequestsListBloc>().add(
                      const AdminHolidayRequestsListEvent.fetchData(
                          elementsPerPage: 7, page: 0)),
                );
              },
              initial: (_) {},
              loading: (_) {
                showProgressSnackBar(context);
              },
              error: (_) {
                showErrorSnackBar(context, 'Error: Report is not Deleted');
              },
              orElse: () {},
            );
          },
          builder: (BuildContext context, DeleteReportsState state) {
            return Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                LayoutBuilder(builder: (context, constraints) {
                  return constraints.maxWidth < 950
                      ? Padding(
                          padding: const EdgeInsets.only(left: 24, right: 24),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 16,
                              ),
                              _tableTitle(
                                  title: AppLocalizations.of(context)!.reports,
                                  subtitle: context
                                      .read<AdminHolidayRequestsListBloc>()
                                      .state
                                      .tableData
                                      .totalElementCounts
                                      .toString()),
                              Spacer(),
                              SizedBox(
                                  width: 172,
                                  child: AppElevatedButton(
                                    text: AppLocalizations.of(context)!
                                        .createReport,
                                    prefixIcon: const Icon(
                                      size: 15,
                                      FontAwesomeIcons.plus,
                                      color: Colors.white,
                                    ),
                                    textStyle: const TextStyle(fontSize: 14),
                                    onPressed: () {
                                      context.go('/employee/create_report');
                                    },
                                    verticalPadding: 15,
                                  ))
                            ],
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(left: 142, right: 142),
                          child: SizedBox(
                            height: 52,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 16,
                                ),
                                _tableTitle(
                                    title:
                                        AppLocalizations.of(context)!.reports,
                                    subtitle: context
                                        .read<AdminHolidayRequestsListBloc>()
                                        .state
                                        .tableData
                                        .totalElementCounts
                                        .toString()),
                                Spacer(),
                                SizedBox(
                                    width: 173,
                                    child: AppElevatedButton(
                                      text: AppLocalizations.of(context)!
                                          .createReport,
                                      prefixIcon: const Icon(
                                        size: 15,
                                        FontAwesomeIcons.plus,
                                        color: Colors.white,
                                      ),
                                      textStyle: const TextStyle(fontSize: 14),
                                      onPressed: () {
                                        context.go('/employee/create_report');
                                      },
                                      verticalPadding: 15,
                                    ))
                              ],
                            ),
                          ),
                        );
                }),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 151),
                      child: Visibility(
                        visible: _isVisible,
                        child: Row(
                          children: [
                            Text(
                                '${selected.length} ${AppLocalizations.of(context)!.selected}',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 12)),
                            SizedBox(
                              width: 25,
                            ),
                            GestureDetector(
                              onTap: () {
                                deleteBucketDialog(
                                  context,
                                  text:
                                      'Are you sure you want to delete selected Reports?',
                                );
                              },
                              child: SizedBox(
                                height: 16,
                                child: Text(
                                    AppLocalizations.of(context)!
                                        .deleteSelected,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: AppColors.danger)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Padding(
                  padding: MediaQuery.of(context).size.width > 1350
                      ? EdgeInsets.only(left: 142, right: 142)
                      : EdgeInsets.symmetric(horizontal: 24),
                  child: PTableView(
                    pagination: PTableViewPagination(
                      currentPage: context
                          .watch<AdminHolidayRequestsListBloc>()
                          .state
                          .tableData
                          .currentPage,
                      pagesCount: context
                          .watch<AdminHolidayRequestsListBloc>()
                          .state
                          .tableData
                          .numberOfPages,
                      onPageChanged: (i) {
                        context.read<AdminHolidayRequestsListBloc>().add(
                            AdminHolidayRequestsListEvent.fetchData(
                                page: i, elementsPerPage: 7));
                      },
                    ),
                    fixedHeight: 500,
                    borderRadius: BorderRadius.circular(4),
                    headerHeight: 45,
                    header: PTableViewHeader(
                      contentPadding: EdgeInsets.symmetric(horizontal: 30),
                      backgroundColor: Color(0xFFF1F1F1),
                      rows: [
                        PTableViewRowFixed(
                          width: 27,
                          child: CustomCheckbox(
                              value: value,
                              onChanged: (v) {
                                if (v == true) {
                                  value = true;
                                  selected.addAll(idReports);
                                } else {
                                  value = false;
                                  selected.clear();
                                }
                                setState(() {
                                  _isVisible = selected.isNotEmpty;
                                  print("checkable every ${selected.length}");
                                });
                              }),
                        ),
                        PTableViewRowFixed(
                          width: 13,
                          child: SizedBox(),
                        ),
                        PTableViewRowFixed(
                          width: 41,
                          child: Text(
                            AppLocalizations.of(context)!.type,
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                        ),
                        PTableViewRowFixed(
                          width: 208,
                          child: SizedBox(),
                        ),
                        PTableViewRowFixed(
                            width: 50,
                            child: Text(
                              AppLocalizations.of(context)!.reason,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            )),
                        PTableViewRowFixed(
                          width: 300,
                          child: SizedBox(),
                        ),
                        PTableViewRowFixed(
                            width: 80,
                            child: Text(
                              AppLocalizations.of(context)!.unavailable,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            )),
                        PTableViewRowFixed(
                          width: 300,
                          child: SizedBox(),
                        ),
                        PTableViewRowFixed(
                            width: 43,
                            child: Text(
                              AppLocalizations.of(context)!.status,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            )),
                      ],
                    ),
                    content: PTableViewContent(
                      onTap: (i) {
                        print('i');
                      },
                      divider: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                      backgroundColor: Colors.white,
                      horizontalPadding: 30,
                      columns: listReports.map((e) {
                        final index = listReports.indexOf(e);
                        return _holidaysList(holidayRequest: e);
                      }).toList(),
                    ),
                  ),
                ))
              ],
            );
          }),
    );
  }

  PTableViewColumn _holidaysList({required HolidayRequest holidayRequest}) {
    return PTableViewColumn(rows: [
      PTableViewRowFixed(
          width: 290,
          child: SizedBox(
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomCheckbox(
                    value: selected.contains(holidayRequest.id),
                    onChanged: (v) {
                      setState(() {
                        if (v!) {
                          selected.add(holidayRequest.id);
                          print("add ${selected.length}");
                        } else {
                          selected.remove(holidayRequest.id);
                          print("remove ${selected.length}");
                        }
                        _isVisible = selected.isNotEmpty; // Update _isVisible
                      });
                    }),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  "${holidayRequest.type}",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: holidayRequest.read
                          ? AppColors.darkGrey
                          : Colors.black),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )),
      PTableViewRowFixed(
          width: 350,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                holidayRequest.reason,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: holidayRequest.read
                        ? AppColors.darkGrey
                        : Colors.black),
              ),
            ),
          )),
      PTableViewRowFixed(
          width: 260,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "${holidayRequest.unavailableFrom.formattedTexted(context.watch<LocalizationBloc>().state.locale)} - ${holidayRequest.unavailableTo.formattedTexted(context.watch<LocalizationBloc>().state.locale)}",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: holidayRequest.read
                        ? AppColors.darkGrey
                        : Colors.black),
              ),
            ),
          )),
      PTableViewRowFixed(
          width: 300,
          child: SizedBox(
            height: 60,
            child: Center(
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: holidayRequest.status == "Pending"
                          ? Color(0xFFCAFFCF)
                          : const Color(0xFFF1F1F1)),
                  child: Text(
                    holidayRequest.status,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: Color(0xfF282828)),
                  )),
            ),
          )),
    ]);
  }

  // Widget _customAlertDialog() {
  //   return AlertDialog(title: ,);
  // }

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

  deleteBucketDialog(BuildContext context, {required String text}) {
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
        useFutureOnce = true;
        deleteReportsBloc
            .add(DeleteReportsEvent.deleteReport(reports: selected.toList()));
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
}

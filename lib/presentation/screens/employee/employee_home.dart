import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/enums/attendance_graph_status.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/domain/entities/attendance_graph/attendance_graph.dart';
import 'package:industria/presentation/bloc/attendance_graph/attendance_graph_bloc.dart';
import 'package:industria/presentation/bloc/auth/auth_bloc.dart';
import 'package:industria/presentation/bloc/employee_weekly_report/employee_weekly_report_cubit.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';
import '../../../domain/entities/attendance_graph_key/attendance_graph_key.dart';
import '../../../app/router.dart';
import '../../../core/themes/theme.dart';
import '../../widgets/bold_text_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EmployeeHome extends StatefulWidget {
  const EmployeeHome({Key? key}) : super(key: key);

  @override
  State<EmployeeHome> createState() => _EmployeeHomeState();
}

class _EmployeeHomeState extends State<EmployeeHome> {
  bool isHoveredChatButton = false;
  bool isHoveredReportsButton = false;
  bool isHoveredDocumentsButton = false;

  DateTime currentDate = DateTime.now();

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    if (context.read<AttendanceGraphBloc>().state.graph == null &&
        context.read<AuthBloc>().state.isEmployeeAuthenticated) {
      context.read<AttendanceGraphBloc>().add(
          AttendanceGraphEvent.fetchAttendanceGraph(
              date: currentDate,
              userUid: context.read<AuthBloc>().state.employee!.id!));
      context.read<EmployeeWeeklyReportCubit>().fetchAttendance(
          employeeUid: context.read<AuthBloc>().state.employee!.id!);
    }
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      setState(() {
        currentDate = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (context.read<AttendanceGraphBloc>().state.graph == null &&
            state.isEmployeeAuthenticated) {
          context.read<AttendanceGraphBloc>().add(
              AttendanceGraphEvent.fetchAttendanceGraph(
                  date: currentDate, userUid: state.employee!.id!));
          context.read<EmployeeWeeklyReportCubit>().fetchAttendance(
              employeeUid: context.read<AuthBloc>().state.employee!.id!);
        }
      },
      child: BlocBuilder<AttendanceGraphBloc, AttendanceGraphState>(
        builder: (context, state) => !state.isLoaded || context.watch<EmployeeWeeklyReportCubit>().state == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                  child: ColoredBox(
                    color: AppColors.background,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth < 800 ? 24 : 54),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 51,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BoldTextWidget(
                                text: currentDate.formattedTexted(context
                                    .watch<LocalizationBloc>()
                                    .state
                                    .locale),
                                style: AppTheme.themeData.textTheme.labelLarge!
                                    .copyWith(
                                        color: const Color(0xFF091312),
                                        fontSize: 14),
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "${AppLocalizations.of(context)!.workedThisWeek}  ",
                                    style: AppTheme
                                        .themeData.textTheme.labelLarge!
                                        .copyWith(
                                            color: AppColors.darkGrey,
                                            fontSize: 14)),
                                TextSpan(
                                    text: "${context.watch<EmployeeWeeklyReportCubit>().state?.cleanWeekWork.toInt().toString() ?? "--/--"} ${AppLocalizations.of(context)!.hours}",
                                    style: AppTheme
                                        .themeData.textTheme.labelLarge!
                                        .copyWith(
                                            color: Colors.black, fontSize: 14))
                              ]))
                            ],
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  right: constraints.maxWidth < 800 ? 30 : 52,
                                  left: constraints.maxWidth < 800 ? 30 : 54,
                                  top: 30),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      BoldTextWidget(
                                        text: currentDate.pmAm,
                                        style: AppTheme
                                            .themeData.textTheme.labelLarge!
                                            .copyWith(
                                                color: const Color(0xFF091312),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16),
                                      ),
                                      const Spacer(),
                                      const SizedBox(width: 28),
                                      _interactionButtons(
                                          status:
                                              context.watch<AttendanceGraphBloc>().state.graph!.status),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 55,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: _timeFlowWidget(
                                        date: currentDate,
                                        graph: context
                                            .watch<AttendanceGraphBloc>()
                                            .state
                                            .graph!),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  _timesheet(),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 16,
                                        width: 16,
                                        decoration: BoxDecoration(
                                            color: AppColors.lightGrey,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                      const SizedBox(
                                        width: 13,
                                      ),
                                      BoldTextWidget(
                                        text: AppLocalizations.of(context)!.notAvailable,
                                        style: AppTheme
                                            .themeData.textTheme.labelLarge!
                                            .copyWith(
                                                color: const Color(0xFF091312),
                                                fontSize: 12),
                                      ),
                                      const SizedBox(
                                        width: 36,
                                      ),
                                      Container(
                                        height: 16,
                                        width: 16,
                                        decoration: BoxDecoration(
                                            color: AppColors.mainAccent,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                      const SizedBox(
                                        width: 13,
                                      ),
                                      BoldTextWidget(
                                        text: AppLocalizations.of(context)!.working,
                                        style: AppTheme
                                            .themeData.textTheme.labelLarge!
                                            .copyWith(
                                                color: const Color(0xFF091312),
                                                fontSize: 12),
                                      ),
                                      const SizedBox(
                                        width: 36,
                                      ),
                                      Container(
                                        height: 16,
                                        width: 16,
                                        decoration: BoxDecoration(
                                            color: AppColors.yellow,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                      const SizedBox(
                                        width: 13,
                                      ),
                                      BoldTextWidget(
                                        text: AppLocalizations.of(context)!.breaked,
                                        style: AppTheme
                                            .themeData.textTheme.labelLarge!
                                            .copyWith(
                                                color: const Color(0xFF091312),
                                                fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 35,
                                  ),
                                  Container(
                                    height: 67,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xFFE6E3E3)),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(AppLocalizations.of(context)!.checkIn,
                                                  style: AppTheme.themeData
                                                      .textTheme.labelSmall!
                                                      .copyWith(
                                                          color: AppColors
                                                              .darkGrey,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12)),
                                              Text(context.watch<AttendanceGraphBloc>().state.graph!.start?.pmAm ?? "--/--",
                                                  style: AppTheme.themeData
                                                      .textTheme.labelSmall!
                                                      .copyWith(
                                                          color: Colors.black,
                                                          fontSize: 12))
                                            ]),
                                        const SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(AppLocalizations.of(context)!.pause,
                                                  style: AppTheme.themeData
                                                      .textTheme.labelSmall!
                                                      .copyWith(
                                                          color: AppColors
                                                              .darkGrey,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12)),
                                              Text(context.watch<AttendanceGraphBloc>().state.graph!.pause?.toStringAsFixed(2) ?? "--/--",
                                                  style: AppTheme.themeData
                                                      .textTheme.labelSmall!
                                                      .copyWith(
                                                          color: Colors.black,
                                                          fontSize: 12))
                                            ]),
                                        const SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(AppLocalizations.of(context)!.checkOut,
                                                  style: AppTheme.themeData
                                                      .textTheme.labelSmall!
                                                      .copyWith(
                                                          color: AppColors
                                                              .darkGrey,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12)),
                                              Text(context.watch<AttendanceGraphBloc>().state.graph!.finish?.pmAm ?? "--/--",
                                                  style: AppTheme.themeData
                                                      .textTheme.labelSmall!
                                                      .copyWith(
                                                          color: Colors.black,
                                                          fontSize: 12))
                                            ]),
                                        const SizedBox(
                                          width: 25,
                                        ),
                                        Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Text(AppLocalizations.of(context)!.totalHours,
                                                  style: AppTheme.themeData
                                                      .textTheme.labelSmall!
                                                      .copyWith(
                                                      color: AppColors
                                                          .darkGrey,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                      fontSize: 12)),
                                              Text(context.watch<AttendanceGraphBloc>().state.graph!.totalHours?.toStringAsFixed(2) ?? "--/--",
                                                  style: AppTheme.themeData
                                                      .textTheme.labelSmall!
                                                      .copyWith(
                                                      color: Colors.black,
                                                      fontSize: 12))
                                            ])
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 45,
                                  ),
                                  Wrap(
                                    runSpacing: 20,
                                    spacing: 20,
                                    alignment: WrapAlignment.center,
                                    children: [
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        onEnter: (_) {
                                          setState(() {
                                            isHoveredReportsButton =
                                                !isHoveredReportsButton;
                                          });
                                        },
                                        onExit: (_) {
                                          setState(() {
                                            isHoveredReportsButton =
                                                !isHoveredReportsButton;
                                          });
                                        },
                                        child: GestureDetector(
                                          onTap: () =>
                                              context.go('/employees/reports'),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: isHoveredReportsButton
                                                    ? AppColors.mainDarkAccent
                                                    : AppColors.mainAccent,
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            width: 142,
                                            height: 119,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                    'assets/icons/document.svg'),
                                                const SizedBox(
                                                  height: 13,
                                                ),
                                                SelectionContainer.disabled(
                                                  child: Text(
                                                    AppLocalizations.of(context)!.reports.toUpperCase(),
                                                    style: AppTheme.themeData
                                                        .textTheme.labelMedium!
                                                        .copyWith(
                                                            color:
                                                                Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        onEnter: (_) {
                                          setState(() {
                                            isHoveredChatButton =
                                                !isHoveredChatButton;
                                          });
                                        },
                                        onExit: (_) {
                                          setState(() {
                                            isHoveredChatButton =
                                                !isHoveredChatButton;
                                          });
                                        },
                                        child: GestureDetector(
                                          onTap: () {
                                            context.go('/employees/messaging');
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: isHoveredChatButton
                                                    ? AppColors.mainDarkAccent
                                                    : AppColors.mainAccent,
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            width: 142,
                                            height: 119,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                    'assets/icons/whatsApp.svg'),
                                                const SizedBox(
                                                  height: 13,
                                                ),
                                                SelectionContainer.disabled(
                                                  child: Text(
                                                    AppLocalizations.of(context)!.chat.toUpperCase(),
                                                    style: AppTheme.themeData
                                                        .textTheme.labelMedium!
                                                        .copyWith(
                                                            color:
                                                                Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        onEnter: (_) {
                                          setState(() {
                                            isHoveredDocumentsButton =
                                            !isHoveredDocumentsButton;
                                          });
                                        },
                                        onExit: (_) {
                                          setState(() {
                                            isHoveredDocumentsButton =
                                            !isHoveredDocumentsButton;
                                          });
                                        },
                                        child: GestureDetector(
                                          onTap: () =>
                                              context.go('/employees/documents'),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: isHoveredDocumentsButton
                                                    ? AppColors.mainDarkAccent
                                                    : AppColors.mainAccent,
                                                borderRadius:
                                                BorderRadius.circular(12)),
                                            width: 142,
                                            height: 119,
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                    'assets/icons/document.svg'),
                                                const SizedBox(
                                                  height: 13,
                                                ),
                                                SelectionContainer.disabled(
                                                  child: Text(
                                                    AppLocalizations.of(context)!.documents.toUpperCase(),
                                                    style: AppTheme.themeData
                                                        .textTheme.labelMedium!
                                                        .copyWith(
                                                        color:
                                                        Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                );
                },
              ),
      ),
    );
  }

  Widget _interactionButtons({required AttendanceGraphStatus status}) {
    if (status == AttendanceGraphStatus.notStarted) {
      return _InteractionButton(
        text: AppLocalizations.of(context)!.startWorking,
        color: AppColors.mainAccent,
        hoverColor: AppColors.mainDarkAccent,
        onTap: (){
          final userUid = context.read<AuthBloc>().state.employee!.id!;
          context.read<AttendanceGraphBloc>().add(AttendanceGraphEvent.startWork(date: currentDate, userUid: userUid));
        },
      );
    } else if (status == AttendanceGraphStatus.working) {
      return Row(
        children: [
          _InteractionButton(text: AppLocalizations.of(context)!.startBreak, color: AppColors.secondaryAccent,
          hoverColor: const Color(0xFFD39E00), onTap: (){
              context.read<AttendanceGraphBloc>().add(AttendanceGraphEvent.startBreak(date: currentDate));
            },),
          const SizedBox(
            width: 23,
          ),
          _InteractionButton(
            text: AppLocalizations.of(context)!.finishDay,
            color: AppColors.darkGrey,
            hoverColor: const Color(0xFF676767),
            onTap: () async{
              await _showFinishDayPopup(context);
            },
          )
        ],
      );
    } else if (status == AttendanceGraphStatus.breaked) {
      return Row(
        children: [
          _InteractionButton(
            text: AppLocalizations.of(context)!.stopBreak,
            color: AppColors.mainAccent,
            hoverColor: AppColors.mainDarkAccent,
            onTap: (){
              context.read<AttendanceGraphBloc>().add(AttendanceGraphEvent.stopBreak(date: currentDate));
            },
          ),
          const SizedBox(
            width: 23,
          ),
          _InteractionButton(
            text: AppLocalizations.of(context)!.finishDay,
            color: AppColors.darkGrey,
            hoverColor: const Color(0xFF676767),
            onTap: () async{
              await _showFinishDayPopup(context);
            },
          )
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  final int dayInMinutes = 24 * 60;
  final double timeFlowCircleRadius = 8.0;

  List<String> _timesheetLabels({required double width}) {
    if (width < 600) {
      return ["6 AM", "12 AM", "6 PM", "12 PM"];
    } else if (width < 1200) {
      return [
        "2 AM",
        "4 AM",
        "6 AM",
        "8 AM",
        "10 AM",
        "12 AM",
        "2 AM",
        "4 PM",
        "6 PM",
        "8 PM",
        "10 PM",
        "12 PM",
      ];
    } else {
      return [
        "1 AM",
        "2 AM",
        "3 AM",
        "4 AM",
        "5 AM",
        "6 AM",
        "7 AM",
        "8 AM",
        "9 AM",
        "10 AM",
        "11 AM",
        "12 AM",
        "1 PM",
        "2 PM",
        "3 PM",
        "4 PM",
        "5 PM",
        "6 PM",
        "7 PM",
        "8 PM",
        "9 PM",
        "10 PM",
        "11 PM",
        "12 PM",
      ];
    }
  }

  Widget _timesheet() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final labels = _timesheetLabels(width: constraints.maxWidth);
        return Transform.translate(
          offset: Offset((constraints.maxWidth / labels.length) / 2, 0),
          child: Row(
              children: labels
                  .asMap()
                  .entries
                  .map((e) => Expanded(
                          child: Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    width: 1, color: AppColors.lightGrey))),
                        child: Center(
                            child: Text(
                          e.value,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.black),
                        )),
                      )))
                  .toList()),
        );
      },
    );
  }

  Widget _timeFlowWidget(
      {required DateTime date, required AttendanceGraph graph}) {
    return LayoutBuilder(
      builder: (context, constraints) => SizedBox(
        width: constraints.maxWidth,
        height: timeFlowCircleRadius * 2,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: timeFlowCircleRadius),
                child: Container(
                  height: 3,
                  width: constraints.maxWidth *
                      (((date.hour * 60) + date.minute) / dayInMinutes),
                  color: AppColors.lightGrey,
                ),
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: timeFlowCircleRadius,
                  backgroundColor: AppColors.lightGrey,
                )),
            ...graph.keys.map((e) => Positioned(
                left: constraints.maxWidth *
                        (((e.mark.hour * 60) + e.mark.minute) / dayInMinutes) -
                    timeFlowCircleRadius,
                child: CircleAvatar(
                  radius: timeFlowCircleRadius,
                  backgroundColor: e.status.color,
                ))),
          ],
        ),
      ),
    );
  }
}

class _InteractionButton extends StatefulWidget {
  final String text;
  final Color color;
  final Color hoverColor;
  final VoidCallback onTap;

  const _InteractionButton(
      {Key? key,
      required this.text,
      required this.color,
      required this.hoverColor, required this.onTap})
      : super(key: key);

  @override
  State<_InteractionButton> createState() => _InteractionButtonState();
}

class _InteractionButtonState extends State<_InteractionButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(4),
            ),
            color: isHovered ? widget.hoverColor : widget.color,
          ),
          height: 32,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
            child: SelectionContainer.disabled(
              child: Text(
                widget.text,
                style: AppTheme.themeData.textTheme.labelMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _showFinishDayPopup(BuildContext context){
  String text = "";
  return showDialog(context: context, builder: (context){
    return Dialog(
      child: Container(
        width: 485,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
        ),
        child: IntrinsicHeight(
          child: Column(
            children: [
              Container(height: 156, width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  color: Color(0xFFD1EAFF),
                ),
                child: Center(
                  child: SvgPicture.asset("assets/images/bussiness_competition.svg"),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppLocalizations.of(context)!.finishTheDay, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                    SizedBox(height: 10,),
                    Text(AppLocalizations.of(context)!.ifYouHaveDayComments, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                    SizedBox(height: 10,),
                    TextField(
                      onChanged: (val){
                        text = val;
                      },
                      style: TextStyle(
                        fontSize: 14
                      ),
                      cursorColor: AppColors.mainAccent,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.lightGrey
                          )
                        )
                      ),
                      minLines: 6,
                      maxLines: null,
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Spacer(),
                        TextButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, child: Text(AppLocalizations.of(context)!.close, style: TextStyle(color: AppColors.mainAccent, fontSize: 14),)),
                        SizedBox(width: 25,),
                        SizedBox(
                          width: 105,
                          child: AppElevatedButton(text: AppLocalizations.of(context)!.finish, onPressed: (){
                            context.read<AttendanceGraphBloc>().add(AttendanceGraphEvent.finishWork(date: DateTime.now(), comment: text));
                            Navigator.of(context).pop();
                          }, verticalPadding: 5, textStyle: TextStyle(fontSize: 14),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  });
}

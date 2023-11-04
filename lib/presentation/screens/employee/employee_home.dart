import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:industria/core/constants/colors.dart';
import '../../../app/router.dart';
import '../../../core/themes/theme.dart';
import '../../widgets/bold_text_widget.dart';

class EmployeeHome extends StatefulWidget {
  const EmployeeHome({Key? key}) : super(key: key);

  @override
  State<EmployeeHome> createState() => _EmployeeHomeState();
}

class _EmployeeHomeState extends State<EmployeeHome> {
  bool isHoveredStopBreakButton = false;
  bool isHoveredFinishDayButton = false;
  bool isHoveredChatButton = false;
  bool isHoveredReportsButton = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ColoredBox(
        color: AppColors.background,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 54),
          child: Column(
            children: [
              const SizedBox(
                height: 51,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 100),
                  BoldTextWidget(
                    text: 'February 23, 2023',
                    style: AppTheme.themeData.textTheme.labelLarge!.copyWith(
                      color: const Color(0xFF091312),
                    ),
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Worked this week: ',
                        style: AppTheme.themeData.textTheme.labelLarge!
                            .copyWith(color: AppColors.darkGrey)),
                    TextSpan(
                        text: '32 hours',
                        style: AppTheme.themeData.textTheme.labelLarge!
                            .copyWith(color: Colors.black))
                  ]))
                ],
              ),
              const SizedBox(
                height: 37,
              ),
              ColoredBox(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(right: 52, left: 54, top: 38),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          BoldTextWidget(
                            text: '8:56 PM',
                            style: AppTheme.themeData.textTheme.labelLarge!
                                .copyWith(
                              color: const Color(0xFF091312),
                            ),
                          ),
                          const Spacer(),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            onEnter: (_) {
                              setState(() {
                                isHoveredStopBreakButton =
                                    !isHoveredStopBreakButton;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isHoveredStopBreakButton =
                                    !isHoveredStopBreakButton;
                              });
                            },
                            child: GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                  color: isHoveredStopBreakButton
                                      ? AppColors.mainDarkAccent
                                      : AppColors.mainAccent,
                                ),
                                height: 32,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 18),
                                  child: SelectionContainer.disabled(
                                    child: Text(
                                      'STOP BREAK',
                                      style: AppTheme
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 28),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            onEnter: (_) {
                              setState(() {
                                isHoveredFinishDayButton =
                                    !isHoveredFinishDayButton;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isHoveredFinishDayButton =
                                    !isHoveredFinishDayButton;
                              });
                            },
                            child: GestureDetector(
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4),
                                    ),
                                    color: AppColors.darkGrey),
                                height: 32,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6, horizontal: 18),
                                    child: SelectionContainer.disabled(
                                      child: Text(
                                        'FINISH DAY',
                                        style: AppTheme
                                            .themeData.textTheme.labelMedium!
                                            .copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      const LinearProgressIndicator(color: Colors.black),
                      const SizedBox(
                        height: 68,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 29,
                          ),
                          Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                                color: AppColors.darkGrey,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          BoldTextWidget(
                            text: 'NOT AVAILABLE',
                            style: AppTheme.themeData.textTheme.labelLarge!
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
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          BoldTextWidget(
                            text: 'WORKING',
                            style: AppTheme.themeData.textTheme.labelLarge!
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
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          BoldTextWidget(
                            text: 'BREAK',
                            style: AppTheme.themeData.textTheme.labelLarge!
                                .copyWith(
                                    color: const Color(0xFF091312),
                                    fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Row(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Working hours:',
                                    style: AppTheme
                                        .themeData.textTheme.labelSmall!
                                        .copyWith(
                                            color: AppColors.darkGrey,
                                            fontSize: 12)),
                                Text('7 AM - 4 PM',
                                    style: AppTheme
                                        .themeData.textTheme.labelSmall!
                                        .copyWith(
                                            color: Colors.black, fontSize: 12))
                              ]),
                          const SizedBox(
                            width: 52,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Pause:',
                                    style: AppTheme
                                        .themeData.textTheme.labelSmall!
                                        .copyWith(
                                            color: AppColors.darkGrey,
                                            fontSize: 12)),
                                Text('1,52',
                                    style: AppTheme
                                        .themeData.textTheme.labelSmall!
                                        .copyWith(
                                            color: Colors.black, fontSize: 12))
                              ]),
                          const SizedBox(
                            width: 52,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Total hours:',
                                    style: AppTheme
                                        .themeData.textTheme.labelSmall!
                                        .copyWith(
                                            color: AppColors.darkGrey,
                                            fontSize: 12)),
                                Text('7,48',
                                    style: AppTheme
                                        .themeData.textTheme.labelSmall!
                                        .copyWith(
                                            color: Colors.black, fontSize: 12))
                              ])
                        ],
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      Row(
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
                              onTap: () => router.go('/employee/delete_reports'),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: isHoveredReportsButton
                                        ? AppColors.mainDarkAccent
                                        : AppColors.mainAccent,
                                    borderRadius: BorderRadius.circular(4)),
                                width: 142,
                                height: 119,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/document.svg'),
                                    const SizedBox(
                                      height: 13,
                                    ),
                                    SelectionContainer.disabled(
                                      child: Text(
                                        'REPORTS',
                                        style: AppTheme
                                            .themeData.textTheme.labelMedium!
                                            .copyWith(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 33,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            onEnter: (_) {
                              setState(() {
                                isHoveredChatButton = !isHoveredChatButton;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isHoveredChatButton = !isHoveredChatButton;
                              });
                            },
                            child: GestureDetector(
                              onTap: () {
                                router.go('/employee/messaging');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: isHoveredChatButton
                                        ? AppColors.mainDarkAccent
                                        : AppColors.mainAccent,
                                    borderRadius: BorderRadius.circular(4)),
                                width: 142,
                                height: 119,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/whatsApp.svg'),
                                    const SizedBox(
                                      height: 13,
                                    ),
                                    SelectionContainer.disabled(
                                      child: Text(
                                        'CHAT',
                                        style: AppTheme
                                            .themeData.textTheme.labelMedium!
                                            .copyWith(color: Colors.white),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:styled_text/styled_text.dart';

import '../../../core/themes/theme.dart';
import '../../widgets/app_elevated_button.dart';
import '../../widgets/bold_text_widget.dart';

class EmployeeHome extends StatelessWidget {
  const EmployeeHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 54),
        child: Column(
          children: [
            SizedBox(
              height: 51,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 100),
                BoldTextWidget(
                  text: 'February 23, 2023',
                  style: AppTheme.themeData.textTheme.labelLarge!.copyWith(
                    color: Color(0xFF091312),
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
            SizedBox(
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
                          style:
                              AppTheme.themeData.textTheme.labelLarge!.copyWith(
                            color: Color(0xFF091312),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                                color: AppColors.mainAccent),
                            height: 32,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 18),
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
                        SizedBox(width: 28),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                                color: AppColors.darkGrey),
                            height: 32,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 18),
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
                      ],
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    LinearProgressIndicator(color: Colors.black),
                    SizedBox(
                      height: 68,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 29,
                        ),
                        Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                              color: AppColors.darkGrey,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        BoldTextWidget(
                          text: 'NOT AVAILABLE',
                          style: AppTheme.themeData.textTheme.labelLarge!
                              .copyWith(color: Color(0xFF091312), fontSize: 12),
                        ),
                        SizedBox(
                          width: 36,
                        ),
                        Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                              color: AppColors.mainAccent,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        BoldTextWidget(
                          text: 'WORKING',
                          style: AppTheme.themeData.textTheme.labelLarge!
                              .copyWith(color: Color(0xFF091312), fontSize: 12),
                        ),
                        SizedBox(
                          width: 36,
                        ),
                        Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                              color: AppColors.yellow,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        BoldTextWidget(
                          text: 'BREAK',
                          style: AppTheme.themeData.textTheme.labelLarge!
                              .copyWith(color: Color(0xFF091312), fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
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
                        SizedBox(
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
                        SizedBox(
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
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.mainAccent,
                              borderRadius: BorderRadius.circular(4)),
                          width: 142,
                          height: 119,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/document.svg'),
                              Text(
                                'REPORTS',
                                style: AppTheme.themeData.textTheme.labelMedium!
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 33,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.mainAccent,
                              borderRadius: BorderRadius.circular(4)),
                          width: 142,
                          height: 119,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/document.svg'),
                              Text(
                                'REPORTS',
                                style: AppTheme.themeData.textTheme.labelMedium!
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

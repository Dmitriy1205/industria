import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';

class Steps extends StatelessWidget {
  const Steps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 39),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Stack(children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: AppColors.mainDarkAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            left: 2.5,
                            top: 2.5,
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            )),
                        Positioned(
                            left: 5,
                            top: 5,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                color: AppColors.mainAccent,
                                shape: BoxShape.circle,
                              ),
                            )),
                      ],
                    ),
                  ),
                ]),
                SizedBox(
                    height: 90,
                    width: 3,
                    child: ColoredBox(
                      color: AppColors.mainAccent,
                    )),
                Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: AppColors.mainDarkAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            left: 2.5,
                            top: 2.5,
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            )),
                        Positioned(
                            left: 5,
                            top: 5,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: AppColors.mainAccent,
                                shape: BoxShape.circle,
                              ),
                            ))
                      ],
                    )),
                SizedBox(
                    height: 90,
                    width: 3,
                    child: ColoredBox(
                      color: AppColors.mainAccent,
                    )),
                Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: AppColors.mainDarkAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            left: 2.5,
                            top: 2.5,
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            )),
                        Positioned(
                            left: 5,
                            top: 5,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: AppColors.mainAccent,
                                shape: BoxShape.circle,
                              ),
                            ))
                      ],
                    ))
              ],
            ),
            SizedBox(width: 10),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // Stack(children: [
              //   Positioned(left: 10,
              //     child:
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.25,
                child: Text(AppLocalizations.of(context)!.weWillPrepareAPropossal,
                    style: AppTheme.themeData.textTheme.headlineLarge!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w600)),
              ),
              // ),
              // Positioned(left: 10,
              // child:
              SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.25,
                child: Text(AppLocalizations.of(context)!.getListOfRecommendedJobs,
                    style: AppTheme.themeData.textTheme.bodyMedium!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400)),
              ),
              // ),
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.25,
                child: Text(AppLocalizations.of(context)!.togetherWeWillDiscussIt,
                    style: AppTheme.themeData.textTheme.bodyMedium!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.25,
                child: Text(AppLocalizations.of(context)!.weWillSetUpAMeetingAtGoogle,
                    style: AppTheme.themeData.textTheme.bodyMedium!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.25,
                child: Text(AppLocalizations.of(context)!.summarizing,
                    style: AppTheme.themeData.textTheme.bodyMedium!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.25,
                child: Text(AppLocalizations.of(context)!.basedOnYourSkillsAndDesires,
                    style: AppTheme.themeData.textTheme.bodyMedium!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400)),
              ),
            ])
          ],
          // )
          // ],
        ),
      ),
    );
  }
}

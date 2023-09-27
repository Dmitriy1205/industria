import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../widgets/footer.dart';
import 'dart:html' as html;

class ForEmployers extends StatelessWidget {
  const ForEmployers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Column(
                children: [
                  Text(
                    AppLocalizations.of(context)!.forEmployers,
                    style: AppTheme.themeData.textTheme.headlineLarge,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: AppColors.mainAccent,
                    height: 4,
                    width: 110,
                  ),
                  LayoutBuilder(
                    builder: (context,constraints) => Padding(
                      padding:
                          EdgeInsets.only(top: 47, left: constraints.maxWidth < 1100 ? 24 : 100, right: constraints.maxWidth < 1100 ? 24 : 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.simplifyHiring,
                            style: AppTheme.themeData.textTheme.titleMedium!
                                .copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            AppLocalizations.of(context)!.simplifyHiringText,
                            style: AppTheme.themeData.textTheme.titleMedium,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            AppLocalizations.of(context)!.whyChooseIndustria,
                            style: AppTheme.themeData.textTheme.titleMedium!
                                .copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: AppLocalizations.of(context)!
                                      .whyChooseIndustriaText,
                                  style: AppTheme.themeData.textTheme.titleMedium,

                                ),
                                TextSpan(
                                  text:AppLocalizations.of(context)!
                                      .bapMemberShip,
                                  style:AppTheme
                                      .themeData.textTheme.titleMedium!
                                      .copyWith(
                                    color: AppColors.mainDarkAccent,decoration: TextDecoration.underline,decorationColor:AppColors.mainDarkAccent ),
                                  mouseCursor: SystemMouseCursors.click,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      html.window.open(
                                          'https://www.industria-jobs.de/download_files/Besch_Bap.pdf',
                                          'pdf');
                                    },
                                ),
                                // WidgetSpan(
                                //   child: MouseRegion(
                                //     cursor: SystemMouseCursors.click,
                                //     child: GestureDetector(
                                //       onTap: () {
                                //
                                //       },
                                //       child: Text(
                                //         AppLocalizations.of(context)!
                                //             .bapMemberShip,
                                //         style: AppTheme
                                //             .themeData.textTheme.titleMedium!
                                //             .copyWith(
                                //           color: AppColors.mainAccent,
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 161,
                  ),
                ],
              ),
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:industria/app/app.dart';
import 'package:industria/app/router.dart';

import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../bloc/localization/localization_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'dart:html' as html;

class Footer extends StatefulWidget {
  const Footer({
    super.key,
  });

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  final List<String> routePaths = [
    '/home',
    '/jobs',
    '/employers',
    '/employees',
    '/ourteam',
    '/contact',
    '/dataprotection',
    '/admin',
    '/companydetails',
  ];
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(width: double.infinity, height: 3, color: AppColors.secondaryAccent,),
            Container(width: double.infinity, height: 3, color: AppColors.mainDarkAccent,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Theme(
                        data: Theme.of(context).copyWith(
                          hoverColor: Colors.white,
                        ),
                        child: DropdownButton<String>(
                          focusColor: Colors.white,
                          icon: const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: RotatedBox(
                                quarterTurns: 5,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: AppColors.mainDarkAccent,
                                )),
                          ),
                          underline: SizedBox(),
                          value:
                              context.read<LocalizationBloc>().state.locale ==
                                      const Locale('en')
                                  ? 'English'
                                  : 'Deutsch',
                          borderRadius: BorderRadius.circular(10),
                          items: <String>[
                            'English',
                            'Deutsch',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: AppTheme.themeData.textTheme.titleLarge!
                                    .copyWith(color: AppColors.mainDarkAccent),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            if (context.read<LocalizationBloc>().state.locale ==
                                const Locale('en')) {
                              context.read<LocalizationBloc>().add(
                                  const LocalizationEvent.changeLang(
                                      locale: Locale('de')));
                            } else {
                              context.read<LocalizationBloc>().add(
                                  const LocalizationEvent.changeLang(
                                      locale: Locale('en')));
                            }
                          },
                        ),
                      ),
                      Spacer(),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (_) {
                          setState(() {
                            isHovered = !isHovered;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            isHovered = !isHovered;
                          });
                        },
                        child: GestureDetector(
                          onTap: () {
                            router.go('/employees');
                          },
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                                color:
                                isHovered ? AppColors.mainAccent : Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: AppColors.mainAccent)),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0, left: 27),
                              child: Row(
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.forEmployees,
                                    style: AppTheme
                                        .themeData.textTheme.headlineMedium!
                                        .copyWith(
                                        color: isHovered
                                            ? Colors.white
                                            : AppColors.mainAccent),
                                  ),
                                  const SizedBox(
                                    width: 22,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 14,
                                    color: isHovered
                                        ? Colors.white
                                        : AppColors.mainAccent,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  footerParagraphRow(
                    [
                      AppLocalizations.of(context)!.home,
                      AppLocalizations.of(context)!.jobs,
                      AppLocalizations.of(context)!.forEmployers,
                      AppLocalizations.of(context)!.forEmployees,
                      AppLocalizations.of(context)!.ourTeam,
                      AppLocalizations.of(context)!.contact,
                      AppLocalizations.of(context)!.dataProtection,
                      AppLocalizations.of(context)!.admin,
                      AppLocalizations.of(context)!.companyDetails,
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        router.go('/imprint');
                      },
                      child: Text(
                        'Industry Personnel Services Germany GmbH © 2019',
                        style: AppTheme.themeData.textTheme.titleMedium!
                            .copyWith(color: Color(0xFF8B8B8B)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 21.0),
                    child: Divider(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              html.window.open('https://pandascode.com/', 'pandas');
                            },
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: AppLocalizations.of(context)!.poweredBy,
                                    style: AppTheme.themeData.textTheme.titleMedium!
                                        .copyWith(color: Color(0xFF8B8B8B)),
                                  ),
                                  TextSpan(
                                    text: ' PandasCode',
                                    style: AppTheme.themeData.textTheme.titleMedium!
                                        .copyWith(color: AppColors.mainAccent),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  router.go('/cookie');
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.cookie,
                                  style: AppTheme.themeData.textTheme.titleMedium!
                                      .copyWith(color: Color(0xFF8B8B8B)),
                                ),
                              ),
                            ),
                            Text(
                              ' • ',
                              style: AppTheme.themeData.textTheme.titleMedium!
                                  .copyWith(color: Color(0xFF8B8B8B)),
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  router.go('/condition');
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.conditions,
                                  style: AppTheme.themeData.textTheme.titleMedium!
                                      .copyWith(color: Color(0xFF8B8B8B)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget footerParagraphRow(List<String> names) {
    List<Widget> widgets = [];

    for (var i = 0; i < names.length; i++) {
      if (i > 0) {
        widgets.add(
          Text(
            ' • ',
            style: AppTheme.themeData.textTheme.titleMedium!
                .copyWith(color: Color(0xFF8B8B8B)),
          ),
        );
      }

      widgets.add(
        GestureDetector(
          onTap: () {
            if (i < routePaths.length) {
              router.go(routePaths[i]);
            }
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              names[i],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTheme.themeData.textTheme.titleMedium!
                  .copyWith(color: Color(0xFF8B8B8B)),
            ),
          ),
        ),
      );
    }

    return Wrap(
      children: widgets,
    );
  }
}

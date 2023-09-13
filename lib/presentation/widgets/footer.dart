import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  String dropdownValue = 'English';
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
        // height: 238,
        decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(color: AppColors.mainDarkAccent, width: 3)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 26),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                  color: AppColors.mainAccent,
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
                                    .copyWith(color: AppColors.mainAccent),
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
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                        ),
                      ),
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
                            style: AppTheme.themeData.textTheme.titleLarge!
                                .copyWith(color: AppColors.darkGrey),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                          padding: const EdgeInsets.only(right: 14.0, left: 31),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 21.0),
                child: Divider(
                  color: Colors.grey.shade300,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              style: AppTheme.themeData.textTheme.titleLarge!
                                  .copyWith(color: AppColors.darkGrey),
                            ),
                            TextSpan(
                              text: ' PandasCode',
                              style: AppTheme.themeData.textTheme.titleLarge!
                                  .copyWith(color: AppColors.mainAccent),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            router.go('/cookie');
                          },
                          child: Text(
                            AppLocalizations.of(context)!.cookie,
                            style: AppTheme.themeData.textTheme.titleLarge!
                                .copyWith(color: AppColors.darkGrey),
                          ),
                        ),
                      ),
                      Text(
                        ' • ',
                        style: AppTheme.themeData.textTheme.titleLarge!
                            .copyWith(color: AppColors.darkGrey),
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            router.go('/condition');
                          },
                          child: Text(
                            AppLocalizations.of(context)!.conditions,
                            style: AppTheme.themeData.textTheme.titleLarge!
                                .copyWith(color: AppColors.darkGrey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
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
            style: AppTheme.themeData.textTheme.titleLarge!
                .copyWith(color: AppColors.darkGrey),
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
              style: AppTheme.themeData.textTheme.titleLarge!
                  .copyWith(color: AppColors.darkGrey),
            ),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widgets,
    );
  }
}

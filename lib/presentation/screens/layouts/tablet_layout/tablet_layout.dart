import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:industria/presentation/screens/layouts/tablet_layout/tablet_navbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../app/router.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/constants/strings.dart';
import '../../../../core/themes/theme.dart';
import '../../../bloc/localization/localization_bloc.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  bool changedLang = true;
  String flag = AppImages.engFlag;
  bool isHovered = false;

  final scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
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
                  child: SizedBox(
                    width: 55,
                    height: 27,
                    child: Image.asset(
                      context.read<LocalizationBloc>().state.locale ==
                              const Locale('en')
                          ? AppImages.engFlag
                          : AppImages.gerFlag,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    router.go('/home');
                  },
                  child: Text(
                    AppLocalizations.of(context)!.home,
                    style: AppTheme.themeData.textTheme.headlineMedium!
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    router.go('/jobs');
                  },
                  child: Text(
                    AppLocalizations.of(context)!.jobs,
                    style: AppTheme.themeData.textTheme.headlineMedium!
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    router.go('/employers');
                  },
                  child: Text(
                    AppLocalizations.of(context)!.forEmployers,
                    style: AppTheme.themeData.textTheme.headlineMedium!
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    router.go('/employees');
                  },
                  child: Text(
                    AppLocalizations.of(context)!.forEmployees,
                    style: AppTheme.themeData.textTheme.headlineMedium!
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    router.go('/ourteam');
                  },
                  child: Text(
                    AppLocalizations.of(context)!.ourTeam,
                    style: AppTheme.themeData.textTheme.headlineMedium!
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    router.go('/contact');
                  },
                  child: Text(
                    AppLocalizations.of(context)!.contact,
                    style: AppTheme.themeData.textTheme.headlineMedium!
                        .copyWith(color: Colors.black),
                  ),
                ),
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
                        color: isHovered
                            ? AppColors.mainDarkAccent
                            : AppColors.mainAccent,
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Center(
                        child: Text(
                          AppLocalizations.of(context)!.login,
                          style: AppTheme.themeData.textTheme.headlineMedium,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 120),
        child: TabletNavbar(scaffold: scaffoldState,),
      ),
      body: widget.child,
    );
  }
}

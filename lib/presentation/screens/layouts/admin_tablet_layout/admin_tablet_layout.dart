import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/presentation/screens/layouts/tablet_layout/tablet_navbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../app/router.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/constants/strings.dart';
import '../../../../core/themes/theme.dart';
import '../../../bloc/auth/auth_bloc.dart';
import '../../../bloc/localization/localization_bloc.dart';

class AdminTabletLayout extends StatefulWidget {
  const AdminTabletLayout({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<AdminTabletLayout> createState() => _AdminTabletLayoutState();
}

class _AdminTabletLayoutState extends State<AdminTabletLayout> {
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
                context.read<AuthBloc>().add(const AuthEvent.logout());
                context.go('/admin/login');
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
                      AppLocalizations.of(context)!.logOut,
                      style: AppTheme.themeData.textTheme.headlineMedium,
                    ),
                  ),
                ),
              ),
            ),)
            ],
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 110),
        child: TabletNavbar(scaffold: scaffoldState,),
      ),
      body: widget.child,
    );
  }
}

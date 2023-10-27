import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/presentation/bloc/admin_auth/admin_auth_bloc.dart';
import 'package:industria/presentation/screens/layouts/tablet_layout/tablet_navbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../app/router.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/constants/strings.dart';
import '../../../../core/themes/theme.dart';
import '../../../bloc/auth/auth_bloc.dart';
import '../../../bloc/localization/localization_bloc.dart';

class EmployeeTabletLayout extends StatefulWidget {
  const EmployeeTabletLayout({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<EmployeeTabletLayout> createState() => _EmployeeTabletLayoutState();
}

class _EmployeeTabletLayoutState extends State<EmployeeTabletLayout> {
  bool changedLang = true;
  String flag = AppImages.engFlag;
  bool isHovered = false;

  final scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc,AuthState>(
      listener: (context,state){
        context.go('/employees');
      },
      child: Scaffold(
        key: scaffoldState,
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: MouseRegion(
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
                ),
                Spacer(),
                !context.watch<AuthBloc>().state.isEmployeeAuthenticated ? SizedBox.shrink() : MouseRegion(
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
                      scaffoldState.currentState!.closeDrawer();
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
      ),
    );
  }

  Widget _tab(
      {required String title,
        required IconData icon,
        bool isSelected = false,
        bool show = true,
        required VoidCallback onTap}) {
    return !show ? SizedBox.shrink() :  GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: SelectionContainer.disabled(
          child: Container(
            height: 51,
            // margin: EdgeInsets.only(top: 11, left: 11, right: 11),
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFFD1EAFF) : Colors.transparent,
              // borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    icon,
                    color:
                    isSelected ? AppColors.mainAccent : AppColors.darkGrey,
                    size: 17,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: isSelected
                            ? AppColors.mainAccent
                            : AppColors.darkGrey),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

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
import '../../../widgets/firebase_image.dart';

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
                context.watch<AuthBloc>().state.isEmployeeAuthenticated ? Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: SelectionContainer.disabled(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FirebaseImage(storageRef: context.watch<AuthBloc>().state.employee!.photoRef, rounded: true,),
                        SizedBox(width: 20,),
                        SizedBox(
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(context.watch<AuthBloc>().state.employee!.firstname + " " + context.watch<AuthBloc>().state.employee!.lastname, style: TextStyle(fontSize: 14), maxLines: 1, overflow: TextOverflow.ellipsis,),
                              Text(context.watch<AuthBloc>().state.employee!.email.split("@").first, style: TextStyle(fontSize: 14, color: AppColors.darkGrey), maxLines: 1, overflow: TextOverflow.ellipsis),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ) : SizedBox.shrink(),
                SizedBox(height: 15,),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      hoverColor: Colors.white,
                    ),
                    child: DropdownButton<String>(
                      focusColor: Colors.white,
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 3.0),
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 15,
                          color: AppColors.darkGrey,
                        ),
                      ),
                      underline: SizedBox(),
                      value: context.read<LocalizationBloc>().state.locale ==
                          const Locale('en')
                          ? 'ENG'
                          : 'DE',
                      borderRadius: BorderRadius.circular(10),
                      items: <String>[
                        'ENG',
                        'DE',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: AppTheme.themeData.textTheme.titleSmall!
                                .copyWith(color: Color(0xFF575757)),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        final locale =
                        newValue!.toLowerCase() == 'eng' ? 'en' : 'de';
                        context.read<LocalizationBloc>().add(
                            LocalizationEvent.changeLang(locale: Locale(locale)));
                      },
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

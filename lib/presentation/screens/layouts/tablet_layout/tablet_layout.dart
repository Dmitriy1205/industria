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
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: TextButton(
                  onPressed: (){
                    router.go('/home');
                  },
                  child: Text(
                    AppLocalizations.of(context)!.home,
                    style: AppTheme.themeData.textTheme.headlineMedium!
                        .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: TextButton(
                  onPressed: (){
                    router.go('/jobs');
                  },
                  child: Text(
                    AppLocalizations.of(context)!.jobs,
                    style: AppTheme.themeData.textTheme.headlineMedium!
                        .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: TextButton(
                  onPressed: (){
                    router.go('/employers');
                  },
                  child: Text(
                    AppLocalizations.of(context)!.forEmployers,
                    style: AppTheme.themeData.textTheme.headlineMedium!
                        .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: TextButton(
                  onPressed: (){
                    router.go('/employees');
                  },
                  child: Text(
                    AppLocalizations.of(context)!.forEmployees,
                    style: AppTheme.themeData.textTheme.headlineMedium!
                        .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: TextButton(
                  onPressed: (){
                    router.go('/ourteam');
                  },
                  child: Text(
                    AppLocalizations.of(context)!.ourTeam,
                    style: AppTheme.themeData.textTheme.headlineMedium!
                        .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: TextButton(
                  onPressed: (){
                    router.go('/contact');
                  },
                  child: Text(
                    AppLocalizations.of(context)!.contact,
                    style: AppTheme.themeData.textTheme.headlineMedium!
                        .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
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
        preferredSize: Size(double.infinity, 110),
        child: TabletNavbar(scaffold: scaffoldState,),
      ),
      body: widget.child,
    );
  }
}

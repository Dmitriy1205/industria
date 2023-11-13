import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../app/router.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/themes/theme.dart';
import '../../../bloc/localization/localization_bloc.dart';
import 'mobile_navbar.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  bool changedLang = true;
  String flag = AppImages.engFlag;
  bool isHovered = false;
  List<bool> isHighlighted = [true, false, false, false, false, false];
  late List<String> texts;
  final scaffoldState = GlobalKey<ScaffoldState>();

  @override
  void didChangeDependencies() {
    texts = [
      AppLocalizations.of(context)!.home,
      AppLocalizations.of(context)!.jobs,
      AppLocalizations.of(context)!.forEmployers,
      AppLocalizations.of(context)!.forEmployees,
      AppLocalizations.of(context)!.ourTeam,
      AppLocalizations.of(context)!.contact,
    ];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      drawer: Drawer(
        // backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Container(color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 30),
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
                            LocalizationEvent.changeLang(
                                locale: Locale(locale)));
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: texts.length,
                      itemBuilder: (_, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 55,
                              child: TextButton(
                                onPressed: () {
                                  for (int i = 0;
                                      i < isHighlighted.length;
                                      i++) {
                                    setState(() {
                                      if (index == i) {
                                        isHighlighted[index] = true;
                                      } else {
                                        //the condition to change the highlighted item
                                        isHighlighted[i] = false;
                                      }
                                    });
                                  }
                                  switch (index) {
                                    case 0:
                                      router.go('/home');
                                      break;
                                    case 1:
                                      router.go('/jobs');
                                    case 2:
                                      router.go('/employers');
                                    case 3:
                                      router.go('/employees');
                                    case 4:
                                      router.go('/ourteam');
                                    case 5:
                                      router.go('/contact');
                                  }
                                },
                                child: Text(
                                  texts[index],
                                  style: AppTheme
                                      .themeData.textTheme.headlineMedium!
                                      .copyWith(
                                          color: Colors.black,
                                          fontWeight: isHighlighted[index]
                                              ? FontWeight.w600
                                              : FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
                // MouseRegion(
                //   cursor: SystemMouseCursors.click,
                //   child: TextButton(
                //     onPressed: () {
                //       router.go('/home');
                //     },
                //     child: Text(
                //       AppLocalizations.of(context)!.home,
                //       style: AppTheme.themeData.textTheme.headlineMedium!
                //           .copyWith(
                //           color: Colors.black, fontWeight: FontWeight.w400),
                //     ),
                //   ),
                // ),
                // MouseRegion(
                //   cursor: SystemMouseCursors.click,
                //   child: TextButton(
                //     onPressed: () {
                //       router.go('/jobs');
                //     },
                //     child: Text(
                //       AppLocalizations.of(context)!.jobs,
                //       style: AppTheme.themeData.textTheme.headlineMedium!
                //           .copyWith(
                //           color: Colors.black, fontWeight: FontWeight.w400),
                //     ),
                //   ),
                // ),
                // MouseRegion(
                //   cursor: SystemMouseCursors.click,
                //   child: TextButton(
                //     onPressed: () {
                //       router.go('/employers');
                //     },
                //     child: Text(
                //       AppLocalizations.of(context)!.forEmployers,
                //       style: AppTheme.themeData.textTheme.headlineMedium!
                //           .copyWith(
                //           color: Colors.black, fontWeight: FontWeight.w400),
                //     ),
                //   ),
                // ),
                // MouseRegion(
                //   cursor: SystemMouseCursors.click,
                //   child: TextButton(
                //     onPressed: () {
                //       router.go('/employees');
                //     },
                //     child: Text(
                //       AppLocalizations.of(context)!.forEmployees,
                //       style: AppTheme.themeData.textTheme.headlineMedium!
                //           .copyWith(
                //           color: Colors.black, fontWeight: FontWeight.w400),
                //     ),
                //   ),
                // ),
                // MouseRegion(
                //   cursor: SystemMouseCursors.click,
                //   child: TextButton(
                //     onPressed: () {
                //       router.go('/ourteam');
                //     },
                //     child: Text(
                //       AppLocalizations.of(context)!.ourTeam,
                //       style: AppTheme.themeData.textTheme.headlineMedium!
                //           .copyWith(
                //           color: Colors.black, fontWeight: FontWeight.w400),
                //     ),
                //   ),
                // ),
                // MouseRegion(
                //   cursor: SystemMouseCursors.click,
                //   child: TextButton(
                //     onPressed: () {
                //       router.go('/contact');
                //     },
                //     child: Text(
                //       AppLocalizations.of(context)!.contact,
                //       style: AppTheme.themeData.textTheme.headlineMedium!
                //           .copyWith(
                //           color: Colors.black, fontWeight: FontWeight.w400),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 120,
                ),
                GestureDetector(
                  onTap: () {
                    router.go('/employees');
                  },
                  child: Container(
                    height: 40,
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
                          style: AppTheme.themeData.textTheme.headlineMedium
                              ?.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 110),
        child: MobileNavbar(
          scaffold: scaffoldState,
        ),
      ),
      body: widget.child,
    );
  }
}

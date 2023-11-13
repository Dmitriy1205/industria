import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:industria/app/router.dart';
import 'package:industria/core/constants/images.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';
import 'package:industria/presentation/widgets/shapes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';

class Navbar extends StatefulWidget {
  const Navbar({
    super.key,
  });

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  bool isHovered = false;
  List<bool> isHighlighted = [true, false, false, false, false, false];
  late List<String> texts;

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
    return AppBar(
      surfaceTintColor: Colors.white,
      flexibleSpace: Stack(
        fit: StackFit.passthrough,
        children: [
          Padding(padding: EdgeInsets.only(left: 290),
            child: ListView.builder(scrollDirection: Axis.horizontal,
                itemCount: texts.length,
                itemBuilder: (_, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 30,),
                      TextButton(
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
                    ],
                  );
                }),

            // child: Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     MouseRegion(
            //       cursor: SystemMouseCursors.click,
            //       child: TextButton(
            //         onPressed: () {
            //           router.go('/home');
            //         },
            //         child: Text(
            //           AppLocalizations.of(context)!.home,
            //           style: AppTheme.themeData.textTheme.titleMedium!
            //               .copyWith(color: Color(0xFF575757)),
            //         ),
            //       ),
            //     ),
            //     MouseRegion(
            //       cursor: SystemMouseCursors.click,
            //       child: TextButton(
            //         onPressed: () {
            //           router.go('/jobs');
            //         },
            //         child: Text(
            //           AppLocalizations.of(context)!.jobs,
            //           style: AppTheme.themeData.textTheme.titleMedium!
            //               .copyWith(color: Color(0xFF575757)),
            //         ),
            //       ),
            //     ),
            //     MouseRegion(
            //       cursor: SystemMouseCursors.click,
            //       child: TextButton(
            //         onPressed: () {
            //           router.go('/employers');
            //         },
            //         child: Text(
            //           AppLocalizations.of(context)!.forEmployers,
            //           style: AppTheme.themeData.textTheme.titleMedium!
            //               .copyWith(color: Color(0xFF575757)),
            //         ),
            //       ),
            //     ),
            //     MouseRegion(
            //       cursor: SystemMouseCursors.click,
            //       child: TextButton(
            //         onPressed: () {
            //           router.go('/employees');
            //         },
            //         child: Text(
            //           AppLocalizations.of(context)!.forEmployees,
            //           style: AppTheme.themeData.textTheme.titleMedium!
            //               .copyWith(color: Color(0xFF575757)),
            //         ),
            //       ),
            //     ),
            //     MouseRegion(
            //       cursor: SystemMouseCursors.click,
            //       child: TextButton(
            //         onPressed: () {
            //           router.go('/ourteam');
            //         },
            //         child: Text(
            //           AppLocalizations.of(context)!.ourTeam,
            //           style: AppTheme.themeData.textTheme.titleMedium!
            //               .copyWith(color: Color(0xFF575757)),
            //         ),
            //       ),
            //     ),
            //     MouseRegion(
            //       cursor: SystemMouseCursors.click,
            //       child: TextButton(
            //         onPressed: () {
            //           router.go('/contact');
            //         },
            //         child: Text(
            //           AppLocalizations.of(context)!.contact,
            //           style: AppTheme.themeData.textTheme.titleMedium!
            //               .copyWith(color: Color(0xFF575757)),
            //         ),
            //       ),
            //     ),
            //   ]
            //       .map((e) => Container(
            //             margin: EdgeInsets.symmetric(horizontal: 22),
            //             child: e,
            //           ))
            //       .toList(),
            // ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, top: 14, right: 30, bottom: 14),
            child: Row(
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      router.go('/home');
                    },
                    child: Image.asset(
                      AppImages.logo,
                      scale: 2,
                    ),
                  ),
                ),
                Spacer(),
                Theme(
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
                SizedBox(
                  width: 20,
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
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      decoration: BoxDecoration(
                          color: isHovered
                              ? AppColors.mainDarkAccent
                              : AppColors.mainAccent,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          AppLocalizations.of(context)!.login,
                          style: AppTheme.themeData.textTheme.titleLarge,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: 3,
                color: AppColors.secondaryAccent,
              ),
              Container(
                width: double.infinity,
                height: 3,
                color: AppColors.mainAccent,
              ),
            ],
          )
        ],
      ),
    );
  }
}
/*ClipPath(
            clipper: ShapeBlue(context: context),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.mainAccent,
              ),
            ),
          ),
          ClipPath(
            clipper: ShapeYellow(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 6.5,
              decoration:
                  const BoxDecoration(color: AppColors.secondaryAccent),
            ),
          ),*/

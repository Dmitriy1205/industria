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

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.white,
      flexibleSpace: Stack(
        fit: StackFit.passthrough,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, top: 20, right: 30, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppImages.logo,
                  scale: 2,
                ),
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
                        context
                            .read<LocalizationBloc>()
                            .state
                            .locale ==
                            const Locale('en') ? AppImages.engFlag: AppImages.gerFlag,
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
                          color:
                              isHovered ? AppColors.mainDarkAccent : AppColors.mainAccent,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 14.0, left: 31),
                        child: Row(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.login,
                              style:
                                  AppTheme.themeData.textTheme.headlineMedium,
                            ),
                            const SizedBox(
                              width: 22,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 14,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ClipPath(
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
          ),
        ],
      ),
    );
  }
}

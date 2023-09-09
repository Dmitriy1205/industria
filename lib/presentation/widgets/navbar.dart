import 'package:flutter/material.dart';
import 'package:industria/app/router.dart';
import 'package:industria/core/constants/images.dart';
import 'package:industria/presentation/widgets/shapes.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/strings.dart';
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
  bool changedLang = true;
  String flag = AppImages.engFlag;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: SizedBox(
        child: Stack(
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
                        setState(() {
                          if (changedLang) {
                            //TODO: add change lang to german
                            flag = AppImages.gerFlag;
                          } else {
                            //TODO: add change lang to eng
                            flag = AppImages.engFlag;
                          }
                          changedLang = !changedLang;
                        });
                      },
                      child: SizedBox(
                        width: 55,
                        height: 27,
                        child: Image.asset(
                          flag,
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
                        AppString.home,
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
                        AppString.jobs,
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
                        AppString.forEmployers,
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
                        AppString.forEmployees,
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
                        AppString.ourTeam,
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
                        AppString.contact,
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
                        width: 120,
                        height: 45,
                        decoration: BoxDecoration(
                            color:
                                isHovered ? Colors.black : AppColors.mainAccent,
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0, left: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.login,
                                style:
                                    AppTheme.themeData.textTheme.headlineMedium,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 15,
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
      ),
    );
  }
}

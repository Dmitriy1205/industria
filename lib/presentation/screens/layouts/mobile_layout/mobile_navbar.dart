import 'package:flutter/material.dart';
import 'package:industria/core/constants/images.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../app/router.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/themes/theme.dart';

class MobileNavbar extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffold;

  const MobileNavbar({
    super.key,
    required this.scaffold,
  });

  @override
  State<MobileNavbar> createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      surfaceTintColor: Colors.white,
      flexibleSpace: SizedBox(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: IconButton(
                    icon: const Icon(
                      Icons.reorder,
                      size: 24,
                    ),
                    onPressed: () {
                      if (widget.scaffold.currentState!.isDrawerOpen) {
                        widget.scaffold.currentState!.closeDrawer();
                      } else {
                        widget.scaffold.currentState!.openDrawer();
                      }
                    },
                  )),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(26),
                child: Image.asset(
                  AppImages.logo,
                  scale: 2,
                ),
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
            ),
            Align(alignment: Alignment.centerRight, child:
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: GestureDetector(
                onTap: () {
                  router.go('/employees');
                },
                child: Container(
                  height: 36,
                  width: 88,
                  decoration: BoxDecoration(
                      color: isHovered
                          ? AppColors.mainDarkAccent
                          : AppColors.mainAccent,
                      borderRadius: BorderRadius.circular(29)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.login,
                        style: AppTheme.themeData.textTheme.headlineMedium
                            ?.copyWith(fontSize: 13, fontWeight:FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}

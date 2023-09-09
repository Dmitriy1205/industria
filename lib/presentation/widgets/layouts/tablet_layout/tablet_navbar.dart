import 'package:flutter/material.dart';
import 'package:industria/app/router.dart';
import 'package:industria/core/constants/images.dart';
import 'package:industria/presentation/widgets/shapes.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/strings.dart';
import '../../../../core/themes/theme.dart';

class TabletNavbar extends StatefulWidget {
  const TabletNavbar({
    super.key,
  });

  @override
  State<TabletNavbar> createState() => _TabletNavbarState();
}

class _TabletNavbarState extends State<TabletNavbar> {
  bool isHovered = false;


  @override
  Widget build(BuildContext context) {
    return AppBar(

      flexibleSpace: SizedBox(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Center(
              child: Image.asset(
                AppImages.logo,
                scale: 2,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: ClipPath(
                clipper: ShapeBlue(context: context),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColors.mainAccent,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: ClipPath(
                clipper: ShapeYellow(),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 6.5,
                  decoration:
                      const BoxDecoration(color: AppColors.secondaryAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

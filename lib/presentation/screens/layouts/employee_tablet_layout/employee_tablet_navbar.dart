import 'package:flutter/material.dart';
import 'package:industria/core/constants/images.dart';

import '../../../../core/constants/colors.dart';

class EmployeeTabletNavbar extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffold;

  const EmployeeTabletNavbar({
    super.key, required this.scaffold,
  });

  @override
  State<EmployeeTabletNavbar> createState() => _EmployeeTabletNavbarState();
}

class _EmployeeTabletNavbarState extends State<EmployeeTabletNavbar> {
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
                  padding: EdgeInsets.only(left: 40),
                  child: IconButton(
                    icon: Icon(
                      Icons.reorder,
                      size: 36,
                    ),
                    onPressed: () {
                      if(widget.scaffold.currentState!.isDrawerOpen){
                        widget.scaffold.currentState!.closeDrawer();
                      }else{
                        widget.scaffold.currentState!.openDrawer();
                      }
                    },
                  )),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
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
            )
          ],
        ),
      ),
    );
  }
}

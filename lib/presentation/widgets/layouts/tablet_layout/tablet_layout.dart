import 'package:flutter/material.dart';
import 'package:industria/presentation/widgets/layouts/tablet_layout/tablet_navbar.dart';

import '../../../../app/router.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/constants/strings.dart';
import '../../../../core/themes/theme.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  bool changedLang = true;
  String flag = AppImages.engFlag;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
          GestureDetector(
            onTap: () {
              router.go('/employees');
            },
            child: Container(
              width: 120,
              height: 45,
              decoration: BoxDecoration(
                  color:
                  AppColors.mainAccent,
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
        ],),
      ),),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 120),
        child: TabletNavbar(),
      ),
      body: widget.child,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:industria/presentation/screens/layouts/admin/admin_desktop_layout.dart';
import 'package:industria/presentation/screens/layouts/admin_tablet_layout/admin_tablet_layout.dart';
import 'package:industria/presentation/screens/layouts/employee/employee_desktop_layout.dart';

import '../layouts/employee_tablet_layout/employee_tablet_layout.dart';
import '../layouts/responsive_layout.dart';

class EmployeeMainScreen extends StatelessWidget {
  final Widget child;

  const EmployeeMainScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: EmployeeTabletLayout(child: child),
        tabletLayout: SelectionArea(child: EmployeeTabletLayout(child: child)),
        desktopLayout: SelectionArea(child: EmployeeDesktopLayout(child: child)),
      ),
    );
  }
}

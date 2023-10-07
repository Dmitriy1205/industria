import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:industria/presentation/screens/layouts/admin/admin_desktop_layout.dart';
import 'package:industria/presentation/screens/layouts/admin_tablet_layout/admin_tablet_layout.dart';

import '../layouts/responsive_layout.dart';

class AdminMainScreen extends StatelessWidget {
  final Widget child;

  const AdminMainScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: AdminTabletLayout(child: child),
        tabletLayout: SelectionArea(child: AdminTabletLayout(child: child)),
        desktopLayout: SelectionArea(child: AdminDesktopLayout(child: child)),
      ),
    );
  }
}

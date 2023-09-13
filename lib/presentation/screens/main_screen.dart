import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/navbar.dart';
import 'layouts/desktop_layout.dart';
import 'layouts/mobile_layout.dart';
import 'layouts/responsive_layout.dart';
import 'layouts/tablet_layout/tablet_layout.dart';

class MainScreen extends StatelessWidget {
  final Widget child;

  const MainScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: MobileLayout(child: child),
        tabletLayout: TabletLayout(child: child),
        desktopLayout: DesktopLayout(child: child),
      ),
    );
  }
}

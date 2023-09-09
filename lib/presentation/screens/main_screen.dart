import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:industria/presentation/widgets/layouts/desktop_layout.dart';
import 'package:industria/presentation/widgets/layouts/mobile_layout.dart';
import 'package:industria/presentation/widgets/layouts/responsive_layout.dart';
import 'package:industria/presentation/widgets/layouts/tablet_layout/tablet_layout.dart';

import '../widgets/navbar.dart';

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

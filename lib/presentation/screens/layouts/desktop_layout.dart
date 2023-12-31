import 'package:flutter/material.dart';

import '../../widgets/navbar.dart';

class DesktopLayout extends StatelessWidget {
  final Widget child;

  const DesktopLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 107),
        child: Navbar(),
      ),
      body: child,
    );
  }
}

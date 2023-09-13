import 'package:flutter/material.dart';

import '../../widgets/navbar.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 120),
        child: Navbar(),
      ),
      body: child,
    );
  }
}
import 'package:flutter/material.dart';

import '../../../widgets/admin_specific/admin_navbar.dart';

class AdminDesktopLayout extends StatelessWidget {
  final Widget child;

  const AdminDesktopLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 107),
        child: AdminNavbar(),
      ),
      body: child
    );
  }
}

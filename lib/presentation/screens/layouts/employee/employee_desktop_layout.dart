import 'package:flutter/material.dart';

import '../../../widgets/admin_specific/admin_navbar.dart';
import '../../../widgets/employee_specific/employee_navbar.dart';

class EmployeeDesktopLayout extends StatelessWidget {
  final Widget child;

  const EmployeeDesktopLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 107),
        child: EmployeeNavbar(),
      ),
      body: child
    );
  }
}

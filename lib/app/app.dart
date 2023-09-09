import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:industria/app/router.dart';

import '../core/themes/theme.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      backButtonDispatcher: RootBackButtonDispatcher(),
      theme: AppTheme.themeData,
      debugShowCheckedModeBanner: false,
    );
  }
}
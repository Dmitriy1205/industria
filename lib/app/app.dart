import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:industria/app/overlays.dart';
import 'package:industria/app/providers.dart';
import 'package:industria/app/router.dart';
import 'package:industria/core/overlays/cookie_overlay.dart';
import 'package:industria/presentation/bloc/cookie/cookie_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../core/themes/theme.dart';
import '../l10n/l10n.dart';

import '../presentation/bloc/localization/localization_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Providers(
      child: BlocBuilder<LocalizationBloc, LocalizationState>(
        builder: (context, state) {
          return MaterialApp.router(
            scrollBehavior: defaultTargetPlatform == TargetPlatform.windows || defaultTargetPlatform == TargetPlatform.linux || defaultTargetPlatform == TargetPlatform.macOS ? MaterialScrollBehavior().copyWith( dragDevices: {PointerDeviceKind.mouse}, ) : null,
            routeInformationProvider: router.routeInformationProvider,
            routeInformationParser: router.routeInformationParser,
            routerDelegate: router.routerDelegate,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              AppLocalizations.delegate
            ],
            supportedLocales: L10n.supported,
            locale: state.locale,
            backButtonDispatcher: RootBackButtonDispatcher(),
            theme: AppTheme.themeData,
            debugShowCheckedModeBanner: false,
            builder: (context,child){
              final showCookieDialog = context.watch<CookieBloc>().state.showCookieDialog;
              return Overlays(
                  overlays: [
                    CookiesOverlay(show: showCookieDialog,)
                  ],
                  child: child!);
            },
          );
        },
      ),
    );
  }
}

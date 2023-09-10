import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';

import '../core/services/service_locator.dart';

class Providers extends StatelessWidget {
  final Widget child;

  const Providers({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<LocalizationBloc>(),
          lazy: false,
        ),
      ],
      child: child,
    );
  }
}

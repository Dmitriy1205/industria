import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:industria/presentation/bloc/cookie/cookie_bloc.dart';
import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../widgets/footer.dart';

class Cookie extends StatefulWidget {
  const Cookie({super.key});

  @override
  State<Cookie> createState() => _CookieState();
}

class _CookieState extends State<Cookie> {

  late CookieBloc cookieBloc;

  @override
  void initState() {
    super.initState();
    cookieBloc = context.read<CookieBloc>();
    cookieBloc.add(CookieEvent.hide());
  }

  @override
  void dispose() {
    cookieBloc.add(CookieEvent.show());
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Column(
                children: [
                  Text(
                    AppLocalizations.of(context)!.cookie,
                    style: AppTheme.themeData.textTheme.headlineLarge,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: AppColors.mainAccent,
                    height: 4,
                    width: 110,
                  ),
                  const SizedBox(
                    height: 61,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 105.0,right: 135),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.cookies,
                          style: AppTheme.themeData.textTheme.titleLarge!
                              .copyWith(color: Colors.black, fontSize: 24),
                        ),
                        SizedBox(height: 30,),
                        Text(
                          AppLocalizations.of(context)!.cookiesBigText,
                          style: AppTheme.themeData.textTheme.titleMedium,
                        )
                      ],
                    ),
                  ),const SizedBox(
                    height: 200,
                  ),

                ],
              ),
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}

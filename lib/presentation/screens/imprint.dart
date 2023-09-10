import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../widgets/footer.dart';

class Imprint extends StatelessWidget {
  const Imprint({super.key});

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
                  Text(AppLocalizations.of(context)!.imprint,style: AppTheme
                      .themeData.textTheme.headlineLarge,),
                  const SizedBox(height: 20,),
                  Container(
                    color:AppColors.mainAccent,
                    height: 4,
                    width: 110,
                  ),
                  const SizedBox(height: 47,),
            Padding(
              padding: const EdgeInsets.only(left: 105.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Industry Personnel Services Germany GmbH',
                    style: AppTheme.themeData.textTheme.titleLarge!.copyWith(color: Colors.black),
                  ),
                  const SizedBox(height: 16), // Add spacing between text sections
                  Text(
                      AppLocalizations.of(context)!.address,
                      style: AppTheme.themeData.textTheme.titleLarge!.copyWith(color: Colors.black)
                  ),
                  Text(
                    'Gaustr. 21\n55411 Bingen am Rhein\nGermany',
                    style: AppTheme.themeData.textTheme.titleLarge!.copyWith(color: Colors.black,fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '${AppLocalizations.of(context)!.managingDirector}:',
                      style: AppTheme.themeData.textTheme.titleLarge!.copyWith(color: Colors.black)
                  ),
                  Text(
                    'Michael Walker',
                    style: AppTheme.themeData.textTheme.titleLarge!.copyWith(color: Colors.black,fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '${AppLocalizations.of(context)!.registerCourt}:',
                      style: AppTheme.themeData.textTheme.titleLarge!.copyWith(color: Colors.black)
                  ),
                  Text(
                    'Mainz, HRB 47850',
                    style: AppTheme.themeData.textTheme.titleLarge!.copyWith(color: Colors.black,fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        'Email: ',
                          style: AppTheme.themeData.textTheme.titleLarge!.copyWith(color: Colors.black)
                      ),
                      Text(
                        'team@industria-jobs.de',
                        style: AppTheme.themeData.textTheme.titleLarge!.copyWith(color: Colors.black,fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
                  const SizedBox(height: 161,),
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

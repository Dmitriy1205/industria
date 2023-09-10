import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../widgets/footer.dart';

class DataProtection extends StatelessWidget {
  const DataProtection({super.key});

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
                  Text(AppLocalizations.of(context)!.dataProtection,style: AppTheme
                      .themeData.textTheme.headlineLarge,),
                  const SizedBox(height: 20,),
                  Container(
                    color:AppColors.mainAccent,
                    height: 4,
                    width: 110,
                  ),
                  const SizedBox(height: 47,),
                  const SizedBox(
                    height: 592,
                    width: 658,
                    child: Card(),
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

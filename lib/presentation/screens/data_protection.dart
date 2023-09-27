import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:industria/core/localized_strings/data_protection_strings.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';
import 'package:industria/presentation/widgets/bold_text_widget.dart';
import 'package:styled_text/tags/styled_text_tag.dart';
import 'package:styled_text/widgets/styled_text.dart';
import '../../core/constants/colors.dart';
import '../../core/services/service_locator.dart';
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 11),
                    child: BoldTextWidget(text: kDataProtection(sl<LocalizationBloc>().state.locale),
                        style: Theme.of(context).textTheme.bodyMedium!),
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

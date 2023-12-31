import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:industria/core/constants/images.dart';
import 'package:industria/core/constants/strings.dart';

import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../widgets/footer.dart';

class OurTeam extends StatefulWidget {
  const OurTeam({super.key});

  @override
  State<OurTeam> createState() => _OurTeamState();
}

class _OurTeamState extends State<OurTeam> {
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool isHovered3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (context, constraints) => Padding(
                padding: EdgeInsets.only(top: 45.0, left: constraints.maxWidth < 1100 ? 24 : 100, right: constraints.maxWidth < 1100 ? 24 : 100),
                child: Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.meetOurTeam,
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
                      height: 47,
                    ),
                    Text(
                      AppLocalizations.of(context)!.industriaServesClients,
                      textAlign: TextAlign.center,
                      style: AppTheme.themeData.textTheme.titleMedium!.copyWith(
                          fontSize: 18,
                          color: AppColors.darkGrey,
                          fontStyle: FontStyle.italic),
                    ),
                    const SizedBox(
                      height: 79,
                    ),
                    Center(
                      child: Wrap(
                        runSpacing: 30,
                        spacing: 70,
                        children: [
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isHovered1 = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isHovered1 = false;
                              });
                            },
                            child: Transform.scale(
                              scale: isHovered1 ? 1.2 : 1.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    AppImages.walker,
                                    width: 200,
                                    height: 200,
                                  ),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  Text(
                                    AppString.walker.toUpperCase(),
                                    style:
                                        AppTheme.themeData.textTheme.bodyMedium,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!
                                        .managingDirector,
                                    style: AppTheme
                                        .themeData.textTheme.titleLarge!
                                        .copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: AppColors.mainDarkAccent,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isHovered2 = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isHovered2 = false;
                              });
                            },
                            child: Transform.scale(
                              scale: isHovered2 ? 1.2 : 1.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    AppImages.baker,
                                    width: 200,
                                    height: 200,
                                  ),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  Text(
                                    AppString.baker.toUpperCase(),
                                    style:
                                        AppTheme.themeData.textTheme.bodyMedium,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.salesDirector,
                                    style: AppTheme
                                        .themeData.textTheme.titleLarge!
                                        .copyWith(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: AppColors.mainDarkAccent),
                                  )
                                ],
                              ),
                            ),
                          ),
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                isHovered3 = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                isHovered3 = false;
                              });
                            },
                            child: Transform.scale(
                              scale: isHovered3 ? 1.2 : 1.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    AppImages.coulson,
                                    width: 200,
                                    height: 200,
                                  ),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  Text(
                                    AppString.coulson.toUpperCase(),
                                    style:
                                        AppTheme.themeData.textTheme.bodyMedium,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!
                                        .operationsDirector,
                                    style: AppTheme
                                        .themeData.textTheme.titleLarge!
                                        .copyWith(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: AppColors.mainDarkAccent),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 58,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppLocalizations.of(context)!.team_and_achievements,
                        style: AppTheme.themeData.textTheme.titleMedium!.copyWith(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    SizedBox(height: 13,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppLocalizations.of(context)!.meetBigText1,
                        style: AppTheme.themeData.textTheme.titleMedium!.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 13,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppLocalizations.of(context)!.our_employees,
                        style: AppTheme.themeData.textTheme.titleMedium!.copyWith(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    SizedBox(height: 13,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppLocalizations.of(context)!.meetBigText2,
                        style: AppTheme.themeData.textTheme.titleMedium!.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 161,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}

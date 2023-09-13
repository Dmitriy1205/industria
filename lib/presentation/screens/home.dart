import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:industria/core/constants/images.dart';
import 'package:industria/presentation/widgets/fade_in_animation.dart';
import '../../app/router.dart';
import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../bloc/localization/localization_bloc.dart';
import '../widgets/footer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CarouselController carouselController = CarouselController();
  ScrollController scrollController = ScrollController();
  final textController = TextEditingController();
  String dropdownValue = '';
  bool isHovered = false;
  bool isHoveredCard1 = false;
  bool isHoveredCard2 = false;
  bool isHoveredCard3 = false;


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    dropdownValue = AppLocalizations.of(context)!.allGermany;
  }

  @override
  void dispose() {
    textController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 1100) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 26),
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!
                                      .choosingRightCandidates,
                                  style: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: AppLocalizations.of(context)!
                                            .findYour,
                                        style: AppTheme
                                            .themeData.textTheme.headlineLarge!
                                            .copyWith(fontSize: 36),
                                      ),
                                      TextSpan(
                                        text:
                                            ' ${AppLocalizations.of(context)!.dream}\n',
                                        style: AppTheme
                                            .themeData.textTheme.headlineLarge!
                                            .copyWith(
                                                fontSize: 36,
                                                color: AppColors.mainAccent),
                                      ),
                                      TextSpan(
                                          text:
                                              '${AppLocalizations.of(context)!.job} ',
                                          style: AppTheme.themeData.textTheme
                                              .headlineLarge!
                                              .copyWith(
                                                  fontSize: 36,
                                                  color: AppColors
                                                      .secondaryAccent)),
                                      TextSpan(
                                        text: AppLocalizations.of(context)!
                                            .withUs,
                                        style: AppTheme
                                            .themeData.textTheme.headlineLarge!
                                            .copyWith(fontSize: 36),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.hrSoftware,
                                  style: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 23, right: 8, bottom: 8, top: 8),
                                    child: Row(
                                      children: [
                                        const FaIcon(
                                          FontAwesomeIcons.solidBuilding,
                                          color: AppColors.darkGrey,
                                          size: 13,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!
                                              .jobTitle,
                                          style: AppTheme
                                              .themeData.textTheme.labelMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.darkGrey,
                                                  fontSize: 12),
                                        ),
                                        SizedBox(
                                          width: 125,
                                        ),
                                        Container(
                                          height: 39,
                                          width: 2,
                                          color: AppColors
                                              .lightGrey, // Color of the divider
                                        ),
                                        const SizedBox(
                                          width: 42,
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!
                                              .allGermany,
                                          style: AppTheme
                                              .themeData.textTheme.labelMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.darkGrey,
                                                  fontSize: 12),
                                        ),
                                        const SizedBox(
                                          width: 42,
                                        ),
                                        Container(
                                          height: 48,
                                          decoration: BoxDecoration(
                                              color: AppColors.mainAccent,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 22, right: 43),
                                            child: Row(
                                              children: [
                                                const FaIcon(
                                                  FontAwesomeIcons
                                                      .magnifyingGlass,
                                                  color: Colors.white,
                                                  size: 13,
                                                ),
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                Text(
                                                  AppLocalizations.of(context)!
                                                      .search,
                                                  style: AppTheme.themeData
                                                      .textTheme.labelMedium!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors.white,
                                                          fontSize: 12),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.typeYourKeyword,
                                  style: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.darkGrey,
                                          fontSize: 12),
                                ),
                              ],
                            ),
                            Image.asset(
                              AppImages.homePic,
                              height: 552,
                              width: 720,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 155, left: 90, right: 31),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              AppImages.youtube,
                              height: 351,
                              width: 630,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.ourIndustry,
                                      style: AppTheme
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20,
                                              color: AppColors.mainAccent),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      color: AppColors.mainAccent,
                                      height: 2,
                                      width: 340,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.connecting,
                                  style: AppTheme
                                      .themeData.textTheme.headlineLarge!
                                      .copyWith(fontSize: 36),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.foundedInLondon,
                                  textAlign: TextAlign.start,
                                  style: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 155, left: 90, right: 115),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.bestChoice,
                                      style: AppTheme
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20,
                                              color: AppColors.mainAccent),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      color: AppColors.mainAccent,
                                      height: 2,
                                      width: 340,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.whyWeAre,
                                  style: AppTheme
                                      .themeData.textTheme.headlineLarge!
                                      .copyWith(fontSize: 36),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.atIndustria,
                                  textAlign: TextAlign.start,
                                  style: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.ourTailored,
                                  textAlign: TextAlign.start,
                                  style: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(fontSize: 18),
                                ),
                              ],
                            ),
                            Image.asset(
                              AppImages.homePic2,
                              height: 477,
                              width: 472,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 171,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.achievements,
                            style: AppTheme.themeData.textTheme.headlineLarge!
                                .copyWith(fontSize: 36),
                          ),
                          SizedBox(
                            height: 88,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      color: AppColors.mainAccent,
                                      height: 2,
                                      width: 400,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Image.asset(
                                      AppImages.cup,
                                      scale: 2,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!
                                          .oneOfTheLargest,
                                      style: AppTheme
                                          .themeData.textTheme.headlineLarge!
                                          .copyWith(fontSize: 32),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.weAreTop,
                                      textAlign: TextAlign.start,
                                      style: AppTheme
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(fontSize: 18),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      color: AppColors.mainAccent,
                                      height: 2,
                                      width: 400,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Image.asset(
                                      AppImages.sector,
                                      scale: 2,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.overTwo,
                                      style: AppTheme
                                          .themeData.textTheme.headlineLarge!
                                          .copyWith(fontSize: 32),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.weCanHelp,
                                      textAlign: TextAlign.start,
                                      style: AppTheme
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(fontSize: 18),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      color: AppColors.mainAccent,
                                      height: 2,
                                      width: 400,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Image.asset(
                                      AppImages.globe,
                                      scale: 2,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!
                                          .weAreInternational,
                                      style: AppTheme
                                          .themeData.textTheme.headlineLarge!
                                          .copyWith(fontSize: 32),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.weHaveOur,
                                      textAlign: TextAlign.start,
                                      style: AppTheme
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 128,
                      ),
                      SizedBox(
                        height: 337,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(AppImages.homePic3),
                            Positioned(
                              left: 110,
                              bottom: 52,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: AppColors.mainAccent,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 62,
                                    vertical: 22,
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.getInTouch,
                                    style: AppTheme
                                        .themeData.textTheme.labelMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 110,
                              bottom: 143,
                              child: Text(
                                AppLocalizations.of(context)!.considering,
                                style: AppTheme.themeData.textTheme.labelMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 32),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 159,
                      ),
                      Text(
                        AppLocalizations.of(context)!.ourPartners,
                        style: AppTheme.themeData.textTheme.headlineLarge!
                            .copyWith(fontSize: 36),
                      ),
                      const SizedBox(
                        height: 161,
                      ),
                    ],
                  ),
                ),
              ),
              const Footer(),
            ],
          );
        } else {
          return CustomScrollView(
            controller: scrollController,
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 45.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 92, top: 26),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!
                                      .choosingRightCandidates,
                                  style: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: AppLocalizations.of(context)!
                                            .findYour,
                                        style: AppTheme
                                            .themeData.textTheme.headlineLarge!
                                            .copyWith(fontSize: 36),
                                      ),
                                      TextSpan(
                                        text:
                                            ' ${AppLocalizations.of(context)!.dream}\n',
                                        style: AppTheme
                                            .themeData.textTheme.headlineLarge!
                                            .copyWith(
                                                fontSize: 36,
                                                color: AppColors.mainAccent),
                                      ),
                                      TextSpan(
                                          text:
                                              '${AppLocalizations.of(context)!.job} ',
                                          style: AppTheme.themeData.textTheme
                                              .headlineLarge!
                                              .copyWith(
                                                  fontSize: 36,
                                                  color: AppColors
                                                      .secondaryAccent)),
                                      TextSpan(
                                        text: AppLocalizations.of(context)!
                                            .withUs,
                                        style: AppTheme
                                            .themeData.textTheme.headlineLarge!
                                            .copyWith(fontSize: 36),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.hrSoftware,
                                  style: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 23, right: 8, bottom: 8, top: 8),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 180,
                                          child: TextField(
                                            controller: textController,
                                            style: AppTheme.themeData.textTheme
                                                .labelMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.darkGrey,
                                                    fontSize: 12),
                                            decoration: InputDecoration(
                                              enabledBorder:
                                                  const OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                              focusedBorder:
                                                  const OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                              hintText:
                                                  AppLocalizations.of(context)!
                                                      .jobTitle,
                                              hintStyle: AppTheme.themeData
                                                  .textTheme.labelMedium!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: AppColors.darkGrey,
                                                      fontSize: 12),
                                              prefixIcon: const Padding(
                                                padding: EdgeInsets.only(
                                                    right: 12.0, top: 2),
                                                child: FaIcon(
                                                  FontAwesomeIcons
                                                      .solidBuilding,
                                                  color: AppColors.darkGrey,
                                                  size: 15,
                                                ),
                                              ),
                                              prefixIconConstraints:
                                                  const BoxConstraints(
                                                      maxWidth: 30,
                                                      minHeight: 0),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: context
                                                      .read<LocalizationBloc>()
                                                      .state
                                                      .locale ==
                                                  const Locale('de')
                                              ? 40
                                              : 25,
                                        ),
                                        Container(
                                          height: 39,
                                          width: 2,
                                          color: AppColors
                                              .lightGrey, // Color of the divider
                                        ),
                                        const SizedBox(
                                          width: 42,
                                        ),
                                        Theme(
                                          data: Theme.of(context).copyWith(
                                            hoverColor: Colors.white,
                                          ),
                                          child: DropdownButton<String>(
                                            focusColor: Colors.white,
                                            icon: const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10.0, top: 3),
                                              child: RotatedBox(
                                                  quarterTurns: 5,
                                                  child: Icon(
                                                    Icons.arrow_forward_ios,
                                                    size: 12,
                                                    color: AppColors.darkGrey,
                                                  )),
                                            ),
                                            underline: SizedBox(),
                                            value: dropdownValue,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            items: <String>[
                                              AppLocalizations.of(context)!
                                                  .allGermany,
                                              'Berlin',
                                              'Munich'
                                            ].map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(
                                                  value,
                                                  style: AppTheme.themeData
                                                      .textTheme.labelMedium!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: AppColors
                                                              .darkGrey,
                                                          fontSize: 12),
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                dropdownValue = newValue!;
                                              });
                                            },
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 42,
                                        ),
                                        MouseRegion(
                                          cursor: SystemMouseCursors.click,
                                          onEnter: (_) {
                                            setState(() {
                                              isHovered = !isHovered;
                                            });
                                          },
                                          onExit: (_) {
                                            setState(() {
                                              isHovered = !isHovered;
                                            });
                                          },
                                          child: GestureDetector(
                                            onTap: () {
                                              router.go('/jobs');
                                            },
                                            child: Container(
                                              height: 48,
                                              decoration: BoxDecoration(
                                                  color: isHovered
                                                      ? AppColors.mainDarkAccent
                                                      : AppColors.mainAccent,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 22, right: 43),
                                                child: Row(
                                                  children: [
                                                    const FaIcon(
                                                      FontAwesomeIcons
                                                          .magnifyingGlass,
                                                      color: Colors.white,
                                                      size: 13,
                                                    ),
                                                    const SizedBox(
                                                      width: 16,
                                                    ),
                                                    Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .search,
                                                      style: AppTheme
                                                          .themeData
                                                          .textTheme
                                                          .labelMedium!
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.typeYourKeyword,
                                  style: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.darkGrey,
                                          fontSize: 12),
                                ),
                              ],
                            ),
                            Image.asset(
                              AppImages.homePic,
                              height: 552,
                              width: context
                                          .read<LocalizationBloc>()
                                          .state
                                          .locale ==
                                      const Locale('de')
                                  ? 640
                                  : 720,
                            ),
                          ],
                        ),
                      ),
                      FadeIn(
                        scrollController: scrollController,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 155, left: 90, right: 31),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                AppImages.youtube,
                                height: 351,
                                width: 630,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!
                                            .ourIndustry,
                                        style: AppTheme
                                            .themeData.textTheme.labelMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20,
                                                color: AppColors.mainAccent),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        color: AppColors.mainAccent,
                                        height: 2,
                                        width: 340,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.connecting,
                                    style: AppTheme
                                        .themeData.textTheme.headlineLarge!
                                        .copyWith(fontSize: 36),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!
                                        .foundedInLondon,
                                    textAlign: TextAlign.start,
                                    style: AppTheme
                                        .themeData.textTheme.labelMedium!
                                        .copyWith(fontSize: 18),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 155, left: 90, right: 115),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.bestChoice,
                                      style: AppTheme
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20,
                                              color: AppColors.mainAccent),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      color: AppColors.mainAccent,
                                      height: 2,
                                      width: 340,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.whyWeAre,
                                  style: AppTheme
                                      .themeData.textTheme.headlineLarge!
                                      .copyWith(fontSize: 36),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.atIndustria,
                                  textAlign: TextAlign.start,
                                  style: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.ourTailored,
                                  textAlign: TextAlign.start,
                                  style: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(fontSize: 18),
                                ),
                              ],
                            ),
                            Image.asset(
                              AppImages.homePic2,
                              height: 477,
                              width: 472,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 171,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.achievements,
                            style: AppTheme.themeData.textTheme.headlineLarge!
                                .copyWith(fontSize: 36),
                          ),
                          SizedBox(
                            height: 88,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  onEnter: (_) {
                                    setState(() {
                                      isHoveredCard1 = !isHoveredCard1;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      isHoveredCard1 = !isHoveredCard1;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    transform: isHoveredCard1
                                        ? Matrix4.translationValues(0, -20, 0)
                                        : Matrix4.identity(),
                                    decoration: BoxDecoration(
                                        color: isHoveredCard1
                                            ? AppColors.mainLightAccent
                                            : Colors.white,
                                        border: Border(
                                          top: BorderSide(
                                              color: AppColors.mainAccent,
                                              width: 2),
                                        )),
                                    width: 400,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            AppImages.cup,
                                            scale: 2,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!
                                                .oneOfTheLargest,
                                            style: AppTheme.themeData.textTheme
                                                .headlineLarge!
                                                .copyWith(fontSize: 32),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!
                                                .weAreTop,
                                            textAlign: TextAlign.start,
                                            style: AppTheme.themeData.textTheme
                                                .labelMedium!
                                                .copyWith(fontSize: 18),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  onEnter: (_) {
                                    setState(() {
                                      isHoveredCard2 = !isHoveredCard2;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      isHoveredCard2 = !isHoveredCard2;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    transform: isHoveredCard2
                                        ? Matrix4.translationValues(0, -20, 0)
                                        : Matrix4.identity(),
                                    decoration: BoxDecoration(
                                        color: isHoveredCard2
                                            ? AppColors.mainLightAccent
                                            : Colors.white,
                                        border: Border(
                                          top: BorderSide(
                                              color: AppColors.mainAccent,
                                              width: 2),
                                        )),
                                    width: 400,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            AppImages.sector,
                                            scale: 2,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!
                                                .overTwo,
                                            style: AppTheme.themeData.textTheme
                                                .headlineLarge!
                                                .copyWith(fontSize: 32),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!
                                                .weCanHelp,
                                            textAlign: TextAlign.start,
                                            style: AppTheme.themeData.textTheme
                                                .labelMedium!
                                                .copyWith(fontSize: 18),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  onEnter: (_) {
                                    setState(() {
                                      isHoveredCard3 = !isHoveredCard3;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      isHoveredCard3 = !isHoveredCard3;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    transform: isHoveredCard3
                                        ? Matrix4.translationValues(0, -20, 0)
                                        : Matrix4.identity(),
                                    decoration: BoxDecoration(
                                        color: isHoveredCard3
                                            ? AppColors.mainLightAccent
                                            : Colors.white,
                                        border: Border(
                                          top: BorderSide(
                                              color: AppColors.mainAccent,
                                              width: 2),
                                        )),
                                    width: 400,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            AppImages.globe,
                                            scale: 2,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!
                                                .weAreInternational,
                                            style: AppTheme.themeData.textTheme
                                                .headlineLarge!
                                                .copyWith(fontSize: 32),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!
                                                .weHaveOur,
                                            textAlign: TextAlign.start,
                                            style: AppTheme.themeData.textTheme
                                                .labelMedium!
                                                .copyWith(fontSize: 18),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 128,
                      ),
                      SizedBox(
                        height: 337,
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(AppImages.homePic3),
                            Positioned(
                              left: 110,
                              bottom: 52,
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                onEnter: (_) {
                                  setState(() {
                                    isHovered = !isHovered;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    isHovered = !isHovered;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: isHovered
                                          ? AppColors.mainDarkAccent
                                          : AppColors.mainAccent,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 62,
                                      vertical: 22,
                                    ),
                                    child: Text(
                                      AppLocalizations.of(context)!.getInTouch,
                                      style: AppTheme
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                              fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 110,
                              bottom: 143,
                              child: Text(
                                AppLocalizations.of(context)!.considering,
                                style: AppTheme.themeData.textTheme.labelMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 32),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 159,
                      ),
                      Text(
                        AppLocalizations.of(context)!.ourPartners,
                        style: AppTheme.themeData.textTheme.headlineLarge!
                            .copyWith(fontSize: 36),
                      ),
                      const SizedBox(
                        height: 61,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Center(
                                  child: Icon(
                                Icons.arrow_back_ios,
                                size: 40,
                                color: AppColors.mainAccent,
                              )),
                              onPressed: () {
                                carouselController.previousPage();
                              },
                              hoverColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 58),
                              child: SizedBox(
                                height: 160,
                                width: MediaQuery.of(context).size.width / 1.32,
                                child: CarouselSlider(
                                  carouselController: carouselController,
                                  items: [
                                    Image.asset(
                                      AppImages.tnt,
                                      scale: 3,
                                    ),
                                    Image.asset(
                                      AppImages.british,
                                      scale: 2,
                                    ),
                                    Image.asset(
                                      AppImages.disney,
                                      scale: 2,
                                    ),
                                  ],
                                  options: CarouselOptions(
                                    height: 200,
                                    aspectRatio: 16 / 9,
                                    viewportFraction: 0.4,
                                    initialPage: 0,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Center(
                                  child: Icon(
                                Icons.arrow_forward_ios,
                                size: 40,
                                color: AppColors.mainAccent,
                              )),
                              onPressed: () {
                                carouselController.nextPage();
                              },
                              hoverColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 161,
                      ),
                    ],
                  ),
                ),
              ),
              const Footer(),
            ],
          );
        }
      }),
    );
  }
}

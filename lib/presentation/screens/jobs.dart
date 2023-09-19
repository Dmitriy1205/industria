import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:industria/core/constants/images.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';
import 'package:industria/presentation/widgets/custom_checkbox.dart';

import '../../app/router.dart';
import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../bloc/localization/localization_bloc.dart';
import '../widgets/footer.dart';
import '../widgets/job_card.dart';

class Jobs extends StatefulWidget {
  const Jobs({super.key});

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  final textController = TextEditingController();
  String dropdownValue = '';
  String dropdownValueFilter = 'Software engineering';
  bool isHovered = false;
  bool isHoveredButton = false;
  bool _checkboxValue1 = false;
  bool _checkboxValue2 = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    dropdownValue = AppLocalizations.of(context)!.allGermany;
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 1100) {
            return tablet(context);
          } else {
            return desktop(context);
          }
        },
      ),
    );
  }

  Widget desktop(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 43.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 4),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color(0xFFfafafa),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(2, 4),
                            color: AppColors.lightGrey,
                            blurRadius: 2),
                        BoxShadow(
                          offset: Offset(0, 0),
                          color: AppColors.lightGrey,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 23, right: 8, bottom: 8, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 180,
                            child: TextField(
                              controller: textController,
                              style: AppTheme.themeData.textTheme.labelMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.darkGrey,
                                      fontSize: 10),
                              decoration: InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintText:
                                    AppLocalizations.of(context)!.jobTitle,
                                hintStyle: AppTheme
                                    .themeData.textTheme.labelMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.darkGrey,
                                        fontSize: 12),
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.only(right: 18.0, top: 2),
                                  child: FaIcon(
                                    FontAwesomeIcons.solidBuilding,
                                    color: AppColors.darkGrey,
                                    size: 15,
                                  ),
                                ),
                                prefixIconConstraints: const BoxConstraints(
                                    maxWidth: 50, minHeight: 0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width:
                                context.read<LocalizationBloc>().state.locale ==
                                        const Locale('de')
                                    ? 40
                                    : 25,
                          ),
                          Container(
                            height: 39,
                            width: 2,
                            color: AppColors.lightGrey, // Color of the divider
                          ),
                          const SizedBox(
                            width: 32,
                          ),
                          Theme(
                            data: Theme.of(context).copyWith(
                              hoverColor: Colors.white,
                            ),
                            child: DropdownButton<String>(
                              focusColor: Colors.white,
                              icon: const Padding(
                                padding: EdgeInsets.only(left: 8.0, top: 2),
                                child: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 17,
                                  color: AppColors.darkGrey,
                                ),
                              ),
                              underline: SizedBox(),
                              value: dropdownValue,
                              borderRadius: BorderRadius.circular(10),
                              items: <String>[
                                AppLocalizations.of(context)!.allGermany,
                                'Berlin',
                                'Munich'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: AppTheme
                                        .themeData.textTheme.labelMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.darkGrey,
                                            fontSize: 10),
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
                              onTap: () {},
                              child: Container(
                                height: 48,
                                decoration: BoxDecoration(
                                    color: isHovered
                                        ? AppColors.mainDarkAccent
                                        : AppColors.mainAccent,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 22, right: 43),
                                  child: Row(
                                    children: [
                                      const FaIcon(
                                        FontAwesomeIcons.magnifyingGlass,
                                        color: Colors.white,
                                        size: 13,
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!.search,
                                        style: AppTheme
                                            .themeData.textTheme.labelMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                                fontSize: 10),
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
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 56.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      desktopFilter(context),
                      const SizedBox(
                        width: 75,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 44.0),
                          child: Wrap(
                            spacing: 46.0,
                            runSpacing: 46.0,
                            children: [
                              JobCard(
                                goToDescription:() {router.go('/job_description');},
                                icon: AppImages.apple,
                                date: '22 Jan 2022',
                                vacancy: 'UI/UX Designer',
                                address: 'Hamburg, Marseiller Strasse 2',
                                description:
                                'We are the Beverly Hills Company!\nOne of the leading companies in the\nUkrainian market, which is engaged...',
                                salary: '60000\$ / yr',
                              ),
                              JobCard(
                                goToDescription:() {router.go('/job_description');},
                                icon: AppImages.google,
                                date: '22 Jan 2022',
                                vacancy: 'C++ Software Senior Engineer',
                                address: 'Hamburg, Yell Strasse 5',
                                description:
                                'Seeking for talented engineers\nfrom all around the world with\nskills at C++, C#, Scala, PHP and ...',
                                salary: '80000\$ / yr',
                              ),
                            ],
                          ),
                        ),
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

  Widget tablet(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 11,
                vertical: 43),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xFFfafafa),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(2, 4),
                          color: AppColors.lightGrey,
                          blurRadius: 2),
                      BoxShadow(
                        offset: Offset(0, 0),
                        color: AppColors.lightGrey,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 23, right: 8, bottom: 8, top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 180,
                          child: TextField(
                            controller: textController,
                            style: AppTheme.themeData.textTheme.labelMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.darkGrey,
                                    fontSize: 10),
                            decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: AppLocalizations.of(context)!.jobTitle,
                              hintStyle: AppTheme
                                  .themeData.textTheme.labelMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.darkGrey,
                                      fontSize: 12),
                              prefixIcon: const Padding(
                                padding: EdgeInsets.only(right: 18.0, top: 2),
                                child: FaIcon(
                                  FontAwesomeIcons.solidBuilding,
                                  color: AppColors.darkGrey,
                                  size: 15,
                                ),
                              ),
                              prefixIconConstraints: const BoxConstraints(
                                  maxWidth: 50, minHeight: 0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:
                              context.read<LocalizationBloc>().state.locale ==
                                      const Locale('de')
                                  ? 40
                                  : 25,
                        ),
                        Container(
                          height: 39,
                          width: 2,
                          color: AppColors.lightGrey, // Color of the divider
                        ),
                        const SizedBox(
                          width: 32,
                        ),
                        Theme(
                          data: Theme.of(context).copyWith(
                            hoverColor: Colors.white,
                          ),
                          child: DropdownButton<String>(
                            focusColor: Colors.white,
                            icon: const Padding(
                              padding: EdgeInsets.only(left: 8.0, top: 2),
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                size: 17,
                                color: AppColors.darkGrey,
                              ),
                            ),
                            underline: SizedBox(),
                            value: dropdownValue,
                            borderRadius: BorderRadius.circular(10),
                            items: <String>[
                              AppLocalizations.of(context)!.allGermany,
                              'Berlin',
                              'Munich'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.darkGrey,
                                          fontSize: 10),
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
                            onTap: () {},
                            child: Container(
                              height: 48,
                              decoration: BoxDecoration(
                                  color: isHovered
                                      ? AppColors.mainDarkAccent
                                      : AppColors.mainAccent,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 22, right: 43),
                                child: Row(
                                  children: [
                                    const FaIcon(
                                      FontAwesomeIcons.magnifyingGlass,
                                      color: Colors.white,
                                      size: 13,
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.search,
                                      style: AppTheme
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              fontSize: 10),
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
                  height: 53,
                ),
                mobileFilter(context),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 44.0),
                      child: Wrap(
                        spacing: 46.0,
                        runSpacing: 46.0,
                        children: [
                          JobCard(
                            icon: AppImages.apple,
                            date: '22 Jan 2022',
                            vacancy: 'UI/UX Designer',
                            address: 'Hamburg, Marseiller Strasse 2',
                            description:
                                'We are the Beverly Hills Company!\nOne of the leading companies in the\nUkrainian market, which is engaged...',
                            salary: '60000\$ / yr', goToDescription: () {  },
                          ),
                          JobCard(
                            icon: AppImages.google,
                            date: '22 Jan 2022',
                            vacancy: 'C++ Software Senior Engineer',
                            address: 'Hamburg, Yell Strasse 5',
                            description:
                                'Seeking for talented engineers\nfrom all around the world with\nskills at C++, C#, Scala, PHP and ...',
                            salary: '80000\$ / yr', goToDescription: () {  },
                          ),
                        ],
                      ),
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
        const Footer(),
      ],
    );
  }

  Widget mobileFilter(BuildContext context) {
    return ExpansionTile(
      title: Text(
        AppLocalizations.of(context)!.filter,
        style:
            AppTheme.themeData.textTheme.headlineLarge!.copyWith(fontSize: 22),
      ),
      trailing: const Icon(
        Icons.arrow_drop_down,
        size: 25,
        color: Colors.black,
      ),
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 13,
              ),
              const Divider(
                color: AppColors.lightGrey,
              ),
              const SizedBox(
                height: 26,
              ),
              Text(
                AppLocalizations.of(context)!.area,
                style: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                    fontWeight: FontWeight.w600, color: AppColors.darkGrey),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.lightGrey),
                  borderRadius: BorderRadius.circular(8),
                ),
                width: MediaQuery.of(context).size.width / 3,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 9),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      hoverColor: Colors.white,
                      splashColor: Colors.white,
                      highlightColor: Colors.white,
                    ),
                    child: DropdownButton<String>(
                      isDense: true,
                      isExpanded: true,
                      focusColor: Colors.white,
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 2),
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 25,
                          color: AppColors.darkGrey,
                        ),
                      ),
                      underline: const SizedBox(),
                      value: dropdownValueFilter,
                      borderRadius: BorderRadius.circular(10),
                      items: <String>[
                        'Software engineering',
                        'Development',
                        'Marketing',
                        'Education',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: AppTheme.themeData.textTheme.labelMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 14),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValueFilter = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                AppLocalizations.of(context)!.jobType,
                style: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                    fontWeight: FontWeight.w600, color: AppColors.darkGrey),
              ),
              const SizedBox(
                height: 19,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: CustomCheckbox(
                      value: _checkboxValue1,
                      onChanged: (v) {
                        setState(() {
                          _checkboxValue1 = v!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    AppLocalizations.of(context)!.permanent,
                    style: AppTheme.themeData.textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: CustomCheckbox(
                      value: _checkboxValue2,
                      onChanged: (v) {
                        setState(() {
                          _checkboxValue2 = v!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    AppLocalizations.of(context)!.temporary,
                    style: AppTheme.themeData.textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (_) {
                  setState(() {
                    isHoveredButton = !isHoveredButton;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isHoveredButton = !isHoveredButton;
                  });
                },
                child: AppElevatedButton(
                  text: AppLocalizations.of(context)!.applyFilters,
                  color: isHoveredButton
                      ? AppColors.mainDarkAccent
                      : AppColors.mainAccent,
                  textStyle: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.white),
                  onPressed: () {},
                  verticalPadding: 8,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              AppElevatedButton(
                text: AppLocalizations.of(context)!.resetFilters,
                textStyle: AppTheme.themeData.textTheme.labelSmall!
                    .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
                onPressed: () {},
                verticalPadding: 8,
                color: AppColors.danger,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget desktopFilter(BuildContext context) {
    return SizedBox(
      width: 244,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.filter,
            style: AppTheme.themeData.textTheme.headlineLarge!
                .copyWith(fontSize: 22),
          ),
          const SizedBox(
            height: 13,
          ),
          const Divider(
            color: AppColors.lightGrey,
          ),
          const SizedBox(
            height: 26,
          ),
          Text(
            AppLocalizations.of(context)!.area,
            style: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                fontWeight: FontWeight.w600, color: AppColors.darkGrey),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.lightGrey),
              borderRadius: BorderRadius.circular(8),
            ),
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 9),
              child: Theme(
                data: Theme.of(context).copyWith(
                  hoverColor: Colors.white,
                  splashColor: Colors.white,
                  highlightColor: Colors.white,
                ),
                child: DropdownButton<String>(
                  isDense: true,
                  isExpanded: true,
                  focusColor: Colors.white,
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 2),
                    child: Icon(
                      Icons.arrow_drop_down,
                      size: 25,
                      color: AppColors.darkGrey,
                    ),
                  ),
                  underline: SizedBox(),
                  value: dropdownValueFilter,
                  borderRadius: BorderRadius.circular(10),
                  items: <String>[
                    'Software engineering',
                    'Development',
                    'Marketing',
                    'Education',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: AppTheme.themeData.textTheme.labelMedium!
                            .copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 14),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValueFilter = newValue!;
                    });
                  },
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            AppLocalizations.of(context)!.jobType,
            style: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                fontWeight: FontWeight.w600, color: AppColors.darkGrey),
          ),
          const SizedBox(
            height: 19,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: CustomCheckbox(
                  value: _checkboxValue1,
                  onChanged: (v) {
                    setState(() {
                      _checkboxValue1 = v!;
                    });
                  },
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                AppLocalizations.of(context)!.permanent,
                style: AppTheme.themeData.textTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 14),
              ),
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: CustomCheckbox(
                  value: _checkboxValue2,
                  onChanged: (v) {
                    setState(() {
                      _checkboxValue2 = v!;
                    });
                  },
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                AppLocalizations.of(context)!.temporary,
                style: AppTheme.themeData.textTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 14),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) {
              setState(() {
                isHoveredButton = !isHoveredButton;
              });
            },
            onExit: (_) {
              setState(() {
                isHoveredButton = !isHoveredButton;
              });
            },
            child: AppElevatedButton(
              text: AppLocalizations.of(context)!.applyFilters,
              color: isHoveredButton
                  ? AppColors.mainDarkAccent
                  : AppColors.mainAccent,
              textStyle: AppTheme.themeData.textTheme.labelSmall!
                  .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
              onPressed: () {},
              verticalPadding: 8,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          AppElevatedButton(
            text: AppLocalizations.of(context)!.resetFilters,
            textStyle: AppTheme.themeData.textTheme.labelSmall!
                .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
            onPressed: () {},
            verticalPadding: 8,
            color: AppColors.danger,
          ),
        ],
      ),
    );
  }
}

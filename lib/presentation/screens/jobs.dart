import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/constants/images.dart';
import 'package:industria/core/enums/job_areas.dart';
import 'package:industria/core/enums/job_types.dart';
import 'package:industria/core/extensions/time.dart';
import 'package:industria/domain/entities/job_filters/job_filters.dart';
import 'package:industria/presentation/bloc/jobs/jobs_bloc.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';
import 'package:industria/presentation/widgets/custom_checkbox.dart';

import '../../core/constants/colors.dart';
import '../../core/services/service_locator.dart';
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
  JobAreas dropdownValueFilter = JobAreas.all;
  bool isHovered = false;
  bool isHoveredButton = false;
  List<JobTypes> _jobTypes = [];

  @override
  void initState() {
    super.initState();
    sl<JobsBloc>().state.maybeMap(
        initial: (_) {
          sl<JobsBloc>().add(JobsEvent.fetchJobs(
              filter: JobFilters(count: 10, keyword: "", page: 0)));
        },
        orElse: () {});
  }

  void _onSearchClicked() {
    sl<JobsBloc>().add(JobsEvent.search(
        query: textController.text,
        city: dropdownValue.isEmpty ||
                dropdownValue == AppLocalizations.of(context)!.allGermany
            ? null
            : dropdownValue));
  }

  void _resetFilters(){
    sl<JobsBloc>().add(JobsEvent.resetFilters());
    setState(() {
      _jobTypes.clear();
      textController.clear();
      dropdownValue = AppLocalizations.of(context)!.allGermany;
      dropdownValueFilter = JobAreas.all;
    });
  }

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
                      horizontal: MediaQuery.of(context).size.width / 5),
                  child: Container(
                    height: 84,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(1, 2),
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 6),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 34),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 200,
                            child: TextField(
                              controller: textController,
                              style: AppTheme.themeData.textTheme.labelMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 14),
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
                                        fontSize: 14),
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.only(right: 28.5, top: 2),
                                  child: FaIcon(
                                    FontAwesomeIcons.solidBuilding,
                                    color: AppColors.darkGrey,
                                    size: 20,
                                  ),
                                ),
                                prefixIconConstraints: const BoxConstraints(
                                    maxWidth: 50, minHeight: 0),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 39,
                            width: 2,
                            color: AppColors.lightGrey, // Color of the divider
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
                                padding: EdgeInsets.only(left: 8.0, top: 2),
                                child: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 17,
                                  color: AppColors.darkGrey,
                                ),
                              ),
                              underline: const SizedBox(),
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
                                            fontSize: 14),
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
                              onTap: _onSearchClicked,
                              child: Container(
                                height: double.infinity,
                                decoration: BoxDecoration(
                                    color: isHovered
                                        ? AppColors.mainDarkAccent
                                        : AppColors.mainAccent,
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(12),
                                        bottomRight: Radius.circular(12))),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 40),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AppImages.search,
                                        width: 21,
                                        height: 21,
                                        color: Colors.white,
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
                                                fontSize: 14),
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
                          child: BlocBuilder<JobsBloc, JobsState>(
                            bloc: sl<JobsBloc>(),
                            builder: (context, state) =>
                                state.map(initial: (state) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }, loaded: (state) {
                              return ListView.builder(
                                shrinkWrap: true,
                                itemCount: state.jobs.length,
                                itemBuilder: (context, i) {
                                  final e = state.jobs[i];
                                  return Container(
                                    margin: const EdgeInsets.only(bottom: 30),
                                    child: JobCard(
                                        icon: e.company.logo,
                                        date: getTimeAgo(e.createdAt),
                                        vacancy: e.title,
                                        address: e.location,
                                        description: e.description,
                                        salary: e.salary,
                                        goToDescription: () {
                                          context.push('/job_description', extra: e);
                                        }),
                                  );
                                },
                              );
                            }),
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
                horizontal: MediaQuery.of(context).size.width / 20,
                vertical: 43),
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(1, 2),
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 6),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 34),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: TextField(
                              controller: textController,
                              style: AppTheme.themeData.textTheme.labelMedium!
                                  .copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14),
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
                                    fontSize: 14),
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.only(right: 28.5, top: 2),
                                  child: FaIcon(
                                    FontAwesomeIcons.solidBuilding,
                                    color: AppColors.darkGrey,
                                    size: 20,
                                  ),
                                ),
                                prefixIconConstraints: const BoxConstraints(
                                    maxWidth: 50, minHeight: 0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16,),
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
                            onTap: _onSearchClicked,
                            child: Container(
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  color: isHovered
                                      ? AppColors.mainDarkAccent
                                      : AppColors.mainAccent,
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      bottomRight: Radius.circular(12))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      AppImages.search,
                                      width: 21,
                                      height: 21,
                                      color: Colors.white,
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
                                          fontSize: 14),
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
                const SizedBox(height: 15,),
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
                    underline: const SizedBox(),
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
                              fontSize: 14),
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
                  height: 53,
                ),
                mobileFilter(context),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 44.0),
                    child: BlocBuilder<JobsBloc, JobsState>(
                      bloc: sl<JobsBloc>(),
                      builder: (context, state) =>
                          state.map(initial: (state) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }, loaded: (state) {
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: state.jobs.length,
                              itemBuilder: (context, i) {
                                final e = state.jobs[i];
                                return Container(
                                  margin: const EdgeInsets.only(bottom: 30),
                                  child: JobCard(
                                      icon: e.company.logo,
                                      date: getTimeAgo(e.createdAt),
                                      vacancy: e.title,
                                      address: e.location,
                                      description: e.description,
                                      salary: e.salary,
                                      goToDescription: () {
                                        context.push('/job_description', extra: e);
                                      }),
                                );
                              },
                            );
                          }),
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
                    child: DropdownButton<JobAreas>(
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
                      items: JobAreas.values.map<DropdownMenuItem<JobAreas>>((JobAreas value) {
                        return DropdownMenuItem<JobAreas>(
                          value: value,
                          child: Text(
                            value.text,
                            style: AppTheme.themeData.textTheme.labelMedium!
                                .copyWith(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 14),
                          ),
                        );
                      }).toList(),
                      onChanged: (JobAreas? newValue) {
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
              ...JobTypes.values
                  .map((e) => Container(
                margin: const EdgeInsets.only(top: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: CustomCheckbox(
                        value: _jobTypes.contains(e),
                        onChanged: (v) {
                          setState(() {
                            if (_jobTypes.contains(e)) {
                              _jobTypes.remove(e);
                            } else {
                              _jobTypes.add(e);
                            }
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      e.value,
                      style: AppTheme.themeData.textTheme.labelMedium!
                          .copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 14),
                    ),
                  ],
                ),
              ))
                  .toList(),
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
                  text: AppLocalizations.of(context)!.apply,
                  color: isHoveredButton
                      ? AppColors.mainDarkAccent
                      : AppColors.mainAccent,
                  textStyle: AppTheme.themeData.textTheme.labelSmall!
                      .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
                  onPressed: () {
                    sl<JobsBloc>().add(JobsEvent.applyFilters(
                        types: _jobTypes.map((e) => e.value).toList(), area: dropdownValueFilter == JobAreas.all ? null : dropdownValueFilter.text));
                  },
                  verticalPadding: 10,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              AppElevatedButton(
                text: AppLocalizations.of(context)!.resetFilters,
                textStyle: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                    fontWeight: FontWeight.w600, color: AppColors.mainAccent),
                borderColor: AppColors.mainAccent,
                onPressed: _resetFilters,
                verticalPadding: 10,
                color: Colors.white,
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
                .copyWith(fontSize: 18),
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
                child: DropdownButton<JobAreas>(
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
                  items: JobAreas.values.map<DropdownMenuItem<JobAreas>>((JobAreas value) {
                    return DropdownMenuItem<JobAreas>(
                      value: value,
                      child: Text(
                        value.text,
                        style: AppTheme.themeData.textTheme.labelMedium!
                            .copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 14),
                      ),
                    );
                  }).toList(),
                  onChanged: (JobAreas? newValue) {
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
          ...JobTypes.values
              .map((e) => Container(
                    margin: const EdgeInsets.only(top: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: CustomCheckbox(
                            value: _jobTypes.contains(e),
                            onChanged: (v) {
                              setState(() {
                                if (_jobTypes.contains(e)) {
                                  _jobTypes.remove(e);
                                } else {
                                  _jobTypes.add(e);
                                }
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          e.value,
                          style: AppTheme.themeData.textTheme.labelMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 14),
                        ),
                      ],
                    ),
                  ))
              .toList(),
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
              text: AppLocalizations.of(context)!.apply,
              color: isHoveredButton
                  ? AppColors.mainDarkAccent
                  : AppColors.mainAccent,
              textStyle: AppTheme.themeData.textTheme.labelSmall!
                  .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
              onPressed: () {
                sl<JobsBloc>().add(JobsEvent.applyFilters(
                    types: _jobTypes.map((e) => e.value).toList(), area: dropdownValueFilter == JobAreas.all ? null : dropdownValueFilter.text));
              },
              verticalPadding: 10,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          AppElevatedButton(
            text: AppLocalizations.of(context)!.resetFilters,
            textStyle: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                fontWeight: FontWeight.w600, color: AppColors.mainAccent),
            borderColor: AppColors.mainAccent,
            onPressed: _resetFilters,
            verticalPadding: 10,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

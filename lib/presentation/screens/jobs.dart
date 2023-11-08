import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/constants/images.dart';
import 'package:industria/core/enums/job_areas.dart';
import 'package:industria/core/enums/job_types.dart';
import 'package:industria/core/utils/time.dart';
import 'package:industria/domain/entities/job_filters/job_filters.dart';
import 'package:industria/presentation/bloc/jobs/jobs_bloc.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';
import 'package:industria/presentation/widgets/custom_checkbox.dart';
import 'package:pandas_tableview/p_tableview.dart';

import '../../core/constants/colors.dart';
import '../../core/services/service_locator.dart';
import '../../core/themes/theme.dart';
import '../bloc/localization/localization_bloc.dart';
import '../widgets/footer.dart';
import '../widgets/job_card.dart';

class Jobs extends StatefulWidget {
  final String initialKeyword;
  final String? initialCountry;
  final JobAreas? area;
  const Jobs({super.key, this.initialKeyword = "", this.area, this.initialCountry});

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  late final textController = TextEditingController(text: widget.initialKeyword);
  late String dropdownValue = widget.initialCountry ?? AppLocalizations.of(context)!.allGermany;
  late JobAreas dropdownValueFilter = widget.area ?? JobAreas.all;
  bool isHovered = false;
  bool isHoveredButton = false;
  List<JobTypes> _jobTypes = [];

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    sl<JobsBloc>().add(JobsEvent.fetchJobs(
        filter: JobFilters(count: 5, keyword: widget.initialKeyword, page: 0, city: widget.initialCountry, area: widget.area?.text)));
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
  void dispose() {
    textController.dispose();
    _scrollController.dispose();
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
      controller: _scrollController,
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 43.0),
            child: BlocBuilder<JobsBloc,JobsState>(
              builder: (context,state) => Column(
                children: [
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
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF8F8F8),
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: Color(0xFFE7E7E7)
                                        )
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 34),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: TextField(
                                                controller: textController,
                                                style: AppTheme.themeData.textTheme.labelMedium!
                                                    .copyWith(
                                                    fontWeight: FontWeight.w600,
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
                                                  prefixIcon: Padding(
                                                    padding: EdgeInsets.only(right: 28.5),
                                                    child: SvgPicture.asset(
                                                      AppImages.search,
                                                      color: AppColors.darkGrey,
                                                      width: 20,
                                                      height: 20,
                                                    ),
                                                  ),
                                                  prefixIconConstraints: const BoxConstraints(
                                                      maxWidth: 50, minHeight: 0),
                                                ),
                                              ),
                                            ),
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
                                                    color: Colors.black,
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
                                                          color: Colors.black,
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
                                            SizedBox(width: 30,)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 24,
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
                                        width: 150,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: isHovered
                                                ? AppColors.mainDarkAccent
                                                : AppColors.mainAccent,
                                            borderRadius: BorderRadius.circular(12)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 40),
                                          child: Center(
                                            child: Text(
                                              AppLocalizations.of(context)!.search,
                                              style: AppTheme
                                                  .themeData.textTheme.labelMedium!
                                                  .copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white,
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 44.0),
                                child: state.map(initial: (state) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }, loaded: (state) {
                                  return ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: state.jobs.element.length,
                                    itemBuilder: (context, i) {
                                      final e = state.jobs.element[i];
                                      return Container(
                                        margin: const EdgeInsets.only(bottom: 30),
                                        child: JobCard(
                                            icon: e.company.logo,
                                            date: getTimeAgo(e.createdAt ,context.watch<LocalizationBloc>().state.locale.languageCode),
                                            vacancy: e.title,
                                            address: e.location,
                                            description: e.description,
                                            salary: e.salary,
                                            goToDescription: () {
                                              context.go('/job_description?id=${e.id}');
                                            }),
                                      );
                                    },
                                  );
                                }),
                              ),
                              state.map(initial: (_){
                                return SizedBox.shrink();
                              }, loaded: (state){
                                if(state.jobs.element.isEmpty){
                                  return Text("No matches found");
                                }
                                return PTableViewPagination(currentPage: state.jobs.currentPage, pagesCount: state.jobs.numberOfPages, onPageChanged: (v){
                                  _scrollController.animateTo(0, duration: Duration(milliseconds: 200), curve: Curves.ease);
                                  context.read<JobsBloc>().add(JobsEvent.fetchJobs(filter: state.filter.copyWith(page: v)));
                                });
                              }),
                            ],
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
        ),
        const Footer(),
      ],
    );
  }

  Widget tablet(BuildContext context) {
    return BlocBuilder<JobsBloc,JobsState>(
      builder: (context,state) => CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 43),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: Color(0xFFE7E7E7)
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 34),
                      child: TextField(
                        controller: textController,
                        style: AppTheme.themeData.textTheme.labelMedium!
                            .copyWith(
                            fontWeight: FontWeight.w600,
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
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(right: 28.5),
                            child: SvgPicture.asset(
                              AppImages.search,
                              color: AppColors.darkGrey,
                              width: 20,
                              height: 20,
                            ),
                          ),
                          prefixIconConstraints: const BoxConstraints(
                              maxWidth: 50, minHeight: 0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
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
                                    color: Colors.black,
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
                      Spacer(),
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
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: isHovered
                                    ? AppColors.mainDarkAccent
                                    : AppColors.mainAccent,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              child: Center(
                                child: Text(
                                  AppLocalizations.of(context)!.search,
                                  style: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 53,
                  ),
                  mobileFilter(context),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 44.0),
                      child: state.map(initial: (state) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }, loaded: (state) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.jobs.element.length,
                          itemBuilder: (context, i) {
                            final e = state.jobs.element[i];
                            return Container(
                              margin: const EdgeInsets.only(bottom: 30),
                              child: JobCard(
                                  icon: e.company.logo,
                                  date: getTimeAgo(e.createdAt, context.watch<LocalizationBloc>().state.locale.languageCode),
                                  vacancy: e.title,
                                  address: e.location,
                                  description: e.description,
                                  salary: e.salary,
                                  goToDescription: () {
                                    context.go('/job_description?id=${e.id}');
                                  }),
                            );
                          },
                        );
                      }),
                    ),
                  ),
                  state.map(initial: (_){
                    return SizedBox.shrink();
                  }, loaded: (state){
                    return PTableViewPagination(currentPage: state.jobs.currentPage, pagesCount: state.jobs.numberOfPages, onPageChanged: (v){
                      _scrollController.animateTo(0, duration: Duration(milliseconds: 200), curve: Curves.ease);
                      context.read<JobsBloc>().add(JobsEvent.fetchJobs(filter: state.filter.copyWith(page: v)));
                    });
                  }),
                  const SizedBox(
                    height: 161,
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

  Widget mobileFilter(BuildContext context) {
    return ExpansionTile(
      title: Text(
        AppLocalizations.of(context)!.filter,
        style:
            AppTheme.themeData.textTheme.headlineLarge!.copyWith(fontSize: 22),
      ),
      trailing: const Icon(
        Icons.arrow_drop_down_rounded,
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
                            Icons.arrow_drop_down_rounded,
                            size: 22,
                            color: Colors.black
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
                                fontWeight: FontWeight.w600,
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
                          fontWeight: FontWeight.w600,
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
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.filter,
                style: AppTheme.themeData.textTheme.headlineLarge!
                    .copyWith(fontSize: 18),
              ),
              Spacer(),
              TextButton(
                  onPressed: _resetFilters,
                  child: Text("Clear All", style: TextStyle(color: AppColors.mainAccent, fontSize: 14, fontWeight: FontWeight.w600),))
            ],
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
                      Icons.arrow_drop_down_rounded,
                      size: 22,
                      color: Colors.black
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
                            fontWeight: FontWeight.w600,
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
                          width: 12,
                        ),
                        Text(
                          e.value,
                          style: AppTheme.themeData.textTheme.labelMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w600,
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
        ],
      ),
    );
  }
}

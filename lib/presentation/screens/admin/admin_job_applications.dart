import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:pandas_tableview/p_tableview.dart';

import '../../../core/constants/images.dart';
import '../../../core/utils/debounce.dart';
import '../../../domain/entities/job_application/job_application.dart';
import '../../bloc/job_application_feature/admin_job_applications/admin_job_applications_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../widgets/app_elevated_button.dart';

class AdminJobApplications extends StatefulWidget {
  const AdminJobApplications({Key? key}) : super(key: key);

  @override
  State<AdminJobApplications> createState() => _AdminJobApplicationsState();
}

class _AdminJobApplicationsState extends State<AdminJobApplications> {
  final Debouncer _debouncer = Debouncer(milliseconds: 500);

  @override
  void initState() {
    super.initState();

    if(context.read<AdminJobApplicationsBloc>().state.tableData.element.isEmpty){
      context.read<AdminJobApplicationsBloc>().add(AdminJobApplicationsEvent.fetchJobApplications(page: 0, elementsPerPage: 7));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 52,
          child: Row(
            children: [
              SizedBox(width: 16,),
              _tableTitle(title: AppLocalizations.of(context)!.job_applications, subtitle: context.watch<AdminJobApplicationsBloc>().state.tableData.totalElementCounts.toString()),
              const SizedBox(
                width: 60,
              ),
              Expanded(child: _search(onTextChanged: (val){
                _debouncer.run(() {
                  context.read<AdminJobApplicationsBloc>().add(AdminJobApplicationsEvent.changeSearchTerm(searchTerm: val));
                });
              })),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: PTableView(
            pagination: PTableViewPagination(
              currentPage: context.watch<AdminJobApplicationsBloc>().state.tableData.currentPage,
              pagesCount: context.watch<AdminJobApplicationsBloc>().state.tableData.numberOfPages,
              onPageChanged: (i) {
                context.read<AdminJobApplicationsBloc>().add(AdminJobApplicationsEvent.fetchJobApplications(page: i, elementsPerPage: 5,));
              },
            ),
            fixedHeight: 500,
            borderRadius: BorderRadius.circular(4),
            headerHeight: 45,
            header: const PTableViewHeader(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              backgroundColor: Color(0xFFF1F1F1),
              rows: [
                PTableViewRowFixed(
                  width: 250,
                  child: Text(
                    "APPLICANT",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 12),
                  ),),
                PTableViewRowFixed(
                    width: 250,
                    child: Text(
                      "VACANCY",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12),
                    )),
                PTableViewRowFixed(
                    width: 200,
                    child: Text(
                      "COMPANY",
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    )),
                PTableViewRowFixed(
                    width: 200,
                    child: Center(
                      child: Text(
                        "STATUS",
                        style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                    )),
                PTableViewRowFixed(
                    width: 500,
                    child: Text(
                      "DATE",
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    )),
              ],
            ),
            content: PTableViewContent(
                onTap: (i){
                  final jobApplicationId = context.read<AdminJobApplicationsBloc>().state.tableData.element[i].id;
                  context.go('/admin/view_job_application?id=$jobApplicationId');
                },
                divider: Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
                backgroundColor: Colors.white,
                horizontalPadding: 30,
                columns: context
                    .watch<AdminJobApplicationsBloc>()
                    .state
                    .tableData
                    .element
                    .map((e) => _jobApplicationsList(jobApplication: e))
                    .toList()),
          ),
        )
      ],
    );
  }

  PTableViewColumn _jobApplicationsList({required JobApplication jobApplication}) {
    return PTableViewColumn(
        rows: [
          PTableViewRowFixed(
              width: 250,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "${jobApplication.firstname} ${jobApplication.lastname}",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12, color: jobApplication.read ? AppColors.darkGrey : Colors.black),
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          PTableViewRowFixed(
              width: 250,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  jobApplication.jobOfferName,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12, color: jobApplication.read ? AppColors.darkGrey : Colors.black),
                  overflow: TextOverflow.ellipsis,
                ),
              ),),
          PTableViewRowFixed(
              width: 200,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  jobApplication.company.name,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12, color: jobApplication.read ? AppColors.darkGrey : Colors.black),
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          PTableViewRowFixed(
              width: 200,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: jobApplication.status.toLowerCase() == 'pending' ? Color(0xFFCAFFCF) : Color(0xFFF1F1F1)
                    ),
                    child: Text(
                      jobApplication.status,
                      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              )),
          PTableViewRowFixed(
              width: 150,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  jobApplication.createdAt.formattedTextedWithTime,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12, color: jobApplication.read ? AppColors.darkGrey : Colors.black),
                  overflow: TextOverflow.ellipsis,
                ),
              )),
        ]);
  }

  Widget _search({required Function(String) onTextChanged}) {
    return SizedBox(
      height: 39,
      child: TextField(
        onChanged: onTextChanged,
        decoration: InputDecoration(
            contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            hintText: 'Search',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(11),
              child: SvgPicture.asset(
                AppImages.search,
                color: AppColors.darkGrey,
                width: 16,
                height: 16,
              ),
            ),
            hintStyle: const TextStyle(color: AppColors.darkGrey),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }

  Widget _tableTitle({required String title, required String subtitle}) {
    return SizedBox(
      height: 25,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 1,
            height: double.infinity,
            color: AppColors.darkGrey,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            subtitle,
            style: const TextStyle(
                color: AppColors.darkGrey, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

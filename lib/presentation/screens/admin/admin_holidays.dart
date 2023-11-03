import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/constants/images.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/core/utils/debounce.dart';
import 'package:industria/core/utils/toast.dart';
import 'package:industria/domain/entities/holiday_request/holiday_request.dart';
import 'package:industria/domain/repositories/admin_employee/admin_employee_repository_contract.dart';
import 'package:industria/presentation/bloc/employee_feature/admin_delete_employee/admin_delete_employee_bloc.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';
import 'package:industria/presentation/widgets/firebase_image.dart';
import 'package:pandas_tableview/p_tableview.dart';

import '../../../core/services/service_locator.dart';
import '../../bloc/holiday_request_feature/admin_holiday_requests_list/admin_holiday_requests_list_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AdminHolidays extends StatefulWidget {
  const AdminHolidays({Key? key}) : super(key: key);

  @override
  State<AdminHolidays> createState() => _AdminHolidaysState();
}

class _AdminHolidaysState extends State<AdminHolidays> {
  @override
  void initState() {
    super.initState();
    if(context.read<AdminHolidayRequestsListBloc>().state.tableData.element.isEmpty){
      context.read<AdminHolidayRequestsListBloc>().add(const AdminHolidayRequestsListEvent.fetchData(elementsPerPage: 7, page: 0));
    }
  }

  final Debouncer _debouncer = Debouncer(milliseconds: 500);

  final deleteEmployeeBloc = AdminDeleteEmployeeBloc(adminEmployeeRepository: sl<AdminEmployeeRepository>());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        LayoutBuilder(builder: (context,constraints){
          return constraints.maxWidth < 700 ? Column(
            children: [
              _tableTitle(title: AppLocalizations.of(context)!.reports, subtitle: context.watch<AdminHolidayRequestsListBloc>().state.tableData.totalElementCounts.toString()),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                child: _search(onTextChanged: (val){
                  _debouncer.run(() {
                    context.read<AdminHolidayRequestsListBloc>().add(AdminHolidayRequestsListEvent.changeSearchTerm(searchTerm: val));
                  });
                }),
              ),
            ],
          )  : SizedBox(
            height: 52,
            child: Row(
              children: [
                SizedBox(width: 16,),
                _tableTitle(title: AppLocalizations.of(context)!.reports, subtitle: context.watch<AdminHolidayRequestsListBloc>().state.tableData.totalElementCounts.toString()),
                const SizedBox(
                  width: 60,
                ),
                Expanded(child: _search(onTextChanged: (val){
                  _debouncer.run(() {
                    context.read<AdminHolidayRequestsListBloc>().add(AdminHolidayRequestsListEvent.changeSearchTerm(searchTerm: val));
                  });
                })),
              ],
            ),
          );
        }),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: PTableView(
            pagination: PTableViewPagination(
              currentPage: context.watch<AdminHolidayRequestsListBloc>().state.tableData.currentPage,
              pagesCount: context.watch<AdminHolidayRequestsListBloc>().state.tableData.numberOfPages,
              onPageChanged: (i) {
                context.read<AdminHolidayRequestsListBloc>().add(AdminHolidayRequestsListEvent.fetchData(page: i, elementsPerPage: 7));
              },
            ),
            fixedHeight: 500,
            borderRadius: BorderRadius.circular(4),
            headerHeight: 45,
            header: PTableViewHeader(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              backgroundColor: Color(0xFFF1F1F1),
              rows: [
                PTableViewRowFixed(
                  width: 300,
                  child: Text(
                    AppLocalizations.of(context)!.employee,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 12),
                  ),),
                PTableViewRowFixed(
                  width: 300,
                  child: Text(
                    AppLocalizations.of(context)!.type,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 12),
                  ),),
                PTableViewRowFixed(
                    width: 400,
                    child: Text(
                      AppLocalizations.of(context)!.unavailable,
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12),
                    )),
                PTableViewRowFixed(
                    width: 300,
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.status,
                        style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                    )),
                PTableViewRowFixed(
                    width: 300,
                    child: Text(
                      AppLocalizations.of(context)!.date,
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    )),
              ],
            ),
            content: PTableViewContent(
                onTap: (i){
                  context.go("/admin/holiday?id=${context.read<AdminHolidayRequestsListBloc>().state.tableData.element[i].id}");
                },
                divider: BorderSide(
                  width: 1,
                  color: Colors.grey,
                ),
                backgroundColor: Colors.white,
                horizontalPadding: 30,
                columns: context
                    .watch<AdminHolidayRequestsListBloc>()
                    .state
                    .tableData
                    .element
                    .map((e) => _holidaysList(holidayRequest: e))
                    .toList()),
          ),
        )
      ],
    );
  }

  PTableViewColumn _holidaysList({required HolidayRequest holidayRequest}) {
    return PTableViewColumn(
        rows: [
          PTableViewRowFixed(
              width: 300,
              child: SizedBox(
                height: 60,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FirebaseImage(storageRef: holidayRequest.photoRef, rounded: true,),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "${holidayRequest.firstname} ${holidayRequest.lastname}",
                      style: TextStyle(fontWeight: FontWeight.w600, color: holidayRequest.read ? AppColors.darkGrey : Colors.black),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )),
          PTableViewRowFixed(
              width: 300,
              child: SizedBox(
                height: 60,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    holidayRequest.type,
                    style: TextStyle(fontWeight: FontWeight.w600, color: holidayRequest.read ? AppColors.darkGrey : Colors.black),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )),
          PTableViewRowFixed(
              width: 400,
              child: SizedBox(
                height: 60,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "${holidayRequest.unavailableFrom.formattedTexted(context.watch<LocalizationBloc>().state.locale)} - ${holidayRequest.unavailableTo.formattedTexted(context.watch<LocalizationBloc>().state.locale)}",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: holidayRequest.read ? AppColors.darkGrey : Colors.black),
                  ),
                ),
              )),
          PTableViewRowFixed(
              width: 300,
              child: SizedBox(
                height: 60,
                child: Center(
                  child: Container(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: holidayRequest.status == "Pending" ? Color(0xFFCAFFCF) : const Color(0xFFF1F1F1)),
                      child: Text(
                        holidayRequest.status,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, color: Color(0xfF282828)),
                      )),
                ),
              )),
          PTableViewRowFixed(
              width: 300,
              child: SizedBox(
                height: 60,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    holidayRequest.createdAt.formattedTextedWithTime(context.watch<LocalizationBloc>().state.locale),
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: holidayRequest.read ? AppColors.darkGrey : Colors.black),
                  ),
                ),
              )),
        ]);
  }

  Widget _tableAction(
      {required String title,
        required IconData icon,
        required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: SelectionContainer.disabled(
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Row(
            children: [
              Icon(
                icon,
                size: 18,
                color: AppColors.darkGrey,
              ),
              const SizedBox(
                width: 14,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, color: AppColors.darkGrey),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _search({required Function(String) onTextChanged}) {
    return SizedBox(
      height: 39,
      child: TextField(
        onChanged: onTextChanged,
        decoration: InputDecoration(
            contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            hintText: AppLocalizations.of(context)!.search,
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


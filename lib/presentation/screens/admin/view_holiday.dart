import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/core/utils/download_storage_file.dart';
import 'package:industria/core/utils/route_value.dart';
import 'package:industria/core/utils/toast.dart';
import 'package:industria/domain/entities/job_application/job_application.dart';
import 'package:industria/domain/repositories/holiday_requests/holiday_requests_repository_contract.dart';
import 'package:industria/presentation/bloc/holiday_request_feature/admin_holiday_requests_list/admin_holiday_requests_list_bloc.dart';
import 'package:industria/presentation/bloc/job_application_feature/admin_job_applications/admin_job_applications_bloc.dart';
import 'package:industria/presentation/bloc/job_application_feature/view_job_application/view_job_application_bloc.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';
import 'package:industria/presentation/widgets/firebase_image.dart';

import '../../../core/services/service_locator.dart';
import '../../../core/themes/theme.dart';
import '../../../domain/repositories/attendance/attendance_repository_contract.dart';
import '../../../domain/repositories/job_application/job_application_repository_contract.dart';
import '../../bloc/attendance/attendance_cubit.dart';
import '../../bloc/holiday_request_feature/view_holiday/view_holiday_bloc.dart';

class ViewHoliday extends StatefulWidget{
  const ViewHoliday({Key? key})
      : super(key: key);

  @override
  State<ViewHoliday> createState() => _ViewHolidayState();
}

class _ViewHolidayState extends State<ViewHoliday>{
  final _viewHolidayBloc = ViewHolidayBloc(holidayRequestsRepository: sl<HolidayRequestsRepository>());

  String? selectedStatus;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final paramValue = routeValue(context, "id");
      if(paramValue != null){
        _viewHolidayBloc.add(ViewHolidayEvent.fetchHolidayById(id: paramValue));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ViewHolidayBloc, ViewHolidayState>(
      listener: (context,state){
        state.maybeMap(
            loaded: (state){
              setState(() {
                selectedStatus = state.holiday.status;
              });
            },
            changedStatus: (state){
              context.read<AdminHolidayRequestsListBloc>().add(AdminHolidayRequestsListEvent.replaceHoliday(id: state.holiday.id, holiday: state.holiday));
              showSuccessSnackBar(context, "Saved");
              context.go("/admin/holidays");
            },
            markedAsRead: (state){
              context.read<AdminHolidayRequestsListBloc>().add(AdminHolidayRequestsListEvent.replaceHoliday(id: state.holiday.id, holiday: state.holiday));
            },
            orElse: (){});
      },
      bloc: _viewHolidayBloc,
      builder: (context, state) {
        if(state.holiday == null){
          return const SizedBox.shrink();
        }
        return ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 880),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: SizedBox(
                      height: 25,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Job application",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            " / View",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  IntrinsicHeight(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: AppColors.lightGrey),
                          color: Colors.white),
                      padding: const EdgeInsets.symmetric(vertical: 35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 39),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    FirebaseImage(storageRef: state.holiday!.photoRef, rounded: true,),
                                    SizedBox(width: 24,),
                                    _section(title: "Employee", subtitle: "${state.holiday!.firstname} ${state.holiday!.lastname}"),
                                  ],
                                ),
                                const SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    _section(title: "Unavailable", subtitle: "${state.holiday!.unavailableFrom.formattedTexted} - ${state.holiday!.unavailableTo.formattedTexted}"),
                                    _section(title: "Date", subtitle: state.holiday!.createdAt.formattedTextedWithTime),
                                  ],
                                ),
                                const SizedBox(height: 30,),
                                _section(title: "Reason", subtitle: state.holiday!.reason),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                hoverColor: Colors.white,
                              ),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                focusColor: Colors.white,
                                icon: const Padding(
                                  padding: EdgeInsets.only(left: 3.0),
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    size: 15,
                                    color: AppColors.darkGrey,
                                  ),
                                ),
                                underline: SizedBox(),
                                value: selectedStatus,
                                borderRadius: BorderRadius.circular(10),
                                items: <String>[
                                  'Pending',
                                  'Approved',
                                  'Rejected'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: AppTheme.themeData.textTheme.titleSmall!
                                          .copyWith(color: Color(0xFF575757)),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedStatus = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      SizedBox(
                          width: 160,
                          child: AppElevatedButton(onPressed: (){
                            _viewHolidayBloc.add(ViewHolidayEvent.changeStatus(id: state.holiday!.id, status: selectedStatus!));
                          }, text: 'Save', textStyle: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.normal), color: Colors.white, verticalPadding: 8,)),
                    ],
                  ),
                  const SizedBox(height: 25,),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _section({required String title, required String subtitle, bool link = false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.darkGrey),),
        const SizedBox(height: 14,),
        Text(subtitle.replaceAll(r"\\n", "\n"), style: TextStyle(fontSize: 14, color: link ? AppColors.mainAccent : Colors.black),),
      ],
    );
  }
}

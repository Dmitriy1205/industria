import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/core/utils/pdf_attendance.dart';
import 'package:industria/core/utils/time.dart';
import 'package:industria/domain/entities/employee/employee.dart';
import 'package:industria/domain/repositories/admin_employee/admin_employee_repository_contract.dart';
import 'package:industria/presentation/bloc/employee_feature/admin_employee_details/admin_employee_details_cubit.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';
import 'package:industria/presentation/widgets/firebase_image.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/services/service_locator.dart';
import '../../../core/utils/route_value.dart';
import '../../../domain/entities/attendance/attendance.dart';
import '../../../domain/repositories/attendance/attendance_repository_contract.dart';
import '../../bloc/attendance/attendance_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ViewUserCredentials extends StatefulWidget {

  const ViewUserCredentials({Key? key})
      : super(key: key);

  @override
  State<ViewUserCredentials> createState() => _ViewUserCredentialsState();
}

class _ViewUserCredentialsState extends State<ViewUserCredentials> {
  final _attendanceCubit =
      AttendanceCubit(attendanceRepository: sl<AttendanceRepository>());
  
  final _adminEmployeeDetailsCubit = AdminEmployeeDetailsCubit(adminEmployeeRepository: sl<AdminEmployeeRepository>());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final paramValue = routeValue(context, "id");
      if(paramValue != null){
        _attendanceCubit.fetchUserAttendanceReports(userUid: paramValue);
        _adminEmployeeDetailsCubit.fetchEmployeeById(paramValue);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<AdminEmployeeDetailsCubit, Employee?>(
        bloc: _adminEmployeeDetailsCubit,
        builder: (context,state) => state == null ? CircularProgressIndicator() : ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Column(
            children: [
              const SizedBox(
                height: 26,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 11,
                  ),
                  Text(
                    AppLocalizations.of(context)!.employee,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " / ${AppLocalizations.of(context)!.view}",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              const SizedBox(
                height: 34,
              ),
              IntrinsicHeight(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                FirebaseImage(
                                  storageRef: state.photoRef,
                                  rounded: true,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${state.firstname} ${state.lastname}",
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      state.email,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.darkGrey),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: const Color(0xFFF1F1F1)),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 21, vertical: 7),
                                    child: Text(
                                      state.role,
                                      style: const TextStyle(
                                          color: Color(0xFF282828),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 21,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: AppColors.lightGrey,
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 30, left: 30, bottom: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                _section(
                                    title: AppLocalizations.of(context)!.phoneNumber,
                                    subtitle: state.phoneNumber),
                                const Spacer(),
                                _section(
                                    title: AppLocalizations.of(context)!.dateOfBirth,
                                    subtitle: state.dateOfBirth.formatted),
                                const Spacer(),
                                _section(
                                    title: AppLocalizations.of(context)!.joinedCompany,
                                    subtitle: getTimeAgo(
                                        state.worksSince,
                                        context
                                            .read<LocalizationBloc>()
                                            .state
                                            .locale
                                            .languageCode)),
                              ],
                            ),
                            SizedBox(height: 10,),
                            InkWell(
                              onTap: () async{
                                final uri = Uri.parse("https://wa.me/${state.phoneNumber}");
                                if(await canLaunchUrl(uri)){
                                  await launchUrl(uri);
                                }
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppColors.mainAccent
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(bottom: 3),
                                        child: Icon(FontAwesomeIcons.whatsapp, size: 20, color: Color(0xFFEEEEEE),)),
                                    SizedBox(width: 10,),
                                    Text(AppLocalizations.of(context)!.chat, style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500),),
                                    SizedBox(width: 20,),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              IntrinsicHeight(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        child: BlocBuilder<AttendanceCubit, List<Attendance>>(
                            bloc: _attendanceCubit,
                            builder: (context, state) {
                              return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                 Text(
                                  AppLocalizations.of(context)!.reports,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                ...state
                                    .map((e) => Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                            "${AppLocalizations.of(context)!.attendance_report} | ${e.start.formattedTexted} - ${e.end.formattedTexted}"),
                                        TextButton(
                                            onPressed: (){
                                              generatePdfAttendance(e);
                                            },
                                            child: Text(AppLocalizations.of(context)!.download, style: TextStyle(decoration: TextDecoration.underline, color: AppColors.mainAccent, decorationColor: AppColors.mainAccent, fontWeight: FontWeight.w600),))
                                      ],
                                    ))
                                    .toList()
                              ]);
                            }))),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _section({required String title, required String subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.darkGrey),
        ),
        const SizedBox(
          height: 14,
        ),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
      ],
    );
  }
}

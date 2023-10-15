import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/core/utils/pdf_attendance.dart';
import 'package:industria/core/utils/time.dart';
import 'package:industria/domain/entities/employee/employee.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';
import 'package:industria/presentation/widgets/firebase_image.dart';

import '../../../core/services/service_locator.dart';
import '../../../domain/entities/attendance/attendance.dart';
import '../../../domain/repositories/attendance/attendance_repository_contract.dart';
import '../../bloc/attendance/attendance_cubit.dart';

class ViewUserCredentials extends StatefulWidget {
  final Employee employee;

  const ViewUserCredentials({Key? key, required this.employee})
      : super(key: key);

  @override
  State<ViewUserCredentials> createState() => _ViewUserCredentialsState();
}

class _ViewUserCredentialsState extends State<ViewUserCredentials> {
  final _attendanceCubit =
      AttendanceCubit(attendanceRepository: sl<AttendanceRepository>());

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), (){
      _attendanceCubit.fetchUserAttendanceReports(userUid: widget.employee.id!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
        child: Column(
          children: [
            const SizedBox(
              height: 26,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 11,
                ),
                Text(
                  "Employee",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  " / View",
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
                                storageRef: widget.employee.photoRef,
                                rounded: true,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${widget.employee.firstname} ${widget.employee.lastname}",
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    widget.employee.email,
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
                                    widget.employee.role,
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
                      child: Row(
                        children: [
                          _section(
                              title: "Phone",
                              subtitle: widget.employee.phoneNumber),
                          const Spacer(),
                          _section(
                              title: "Date of birth",
                              subtitle: widget.employee.dateOfBirth.formatted),
                          const Spacer(),
                          _section(
                              title: "Joned company",
                              subtitle: getTimeAgo(
                                  widget.employee.worksSince,
                                  context
                                      .read<LocalizationBloc>()
                                      .state
                                      .locale
                                      .languageCode)),
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
                              const Text(
                                "Reports",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              ...state
                                  .map((e) => Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          "Attendance report | ${e.start.formattedTexted} - ${e.end.formattedTexted}"),
                                      TextButton(
                                          onPressed: (){
                                            generatePdfAttendance(e);
                                          },
                                          child: Text("Download", style: TextStyle(decoration: TextDecoration.underline, color: AppColors.mainAccent, decorationColor: AppColors.mainAccent, fontWeight: FontWeight.w600),))
                                    ],
                                  ))
                                  .toList()
                            ]);
                          }))),
            ),
          ],
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

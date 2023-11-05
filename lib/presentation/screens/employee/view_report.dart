import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:industria/domain/entities/holiday_request/holiday_request.dart';
import 'package:industria/presentation/bloc/holiday_request_feature/viewReportCubit.dart';
import '../../../core/constants/colors.dart';
import '../../../core/services/service_locator.dart';
import '../../../core/utils/route_value.dart';

class ViewReport extends StatefulWidget {

  ViewReport({Key? key}) : super(key: key);

  @override
  State<ViewReport> createState() => _ViewReportState();
}

class _ViewReportState extends State<ViewReport> {
  ViewReportCubit viewReportCubit = sl<ViewReportCubit>();


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final paramValue = routeValue(context, "reportId");
      print('reportreport $paramValue');
      if (paramValue != null) {
        viewReportCubit.viewReport(paramValue);
      }
    });
    // report = viewReportCubit.viewReport(widget.id!) as HolidayRequest;
  }

  @override
  Widget build(BuildContext context) {
    print('${viewReportCubit.state.report!.reason}');
    return ColoredBox(
      color: AppColors.background,
      child: BlocBuilder<ViewReportCubit, ViewReportState>(
          bloc: viewReportCubit,
          builder: (context, state) {
            if( state.isLoading && state.report!.id == null) {
              return CircularProgressIndicator();
            }

                return Column(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 129, left: 300, bottom: 31),
                      child: Row(
                        children: [
                          Text(AppLocalizations.of(context)!.report,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              )),
                          Text(' / ',
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              )),
                          Text(AppLocalizations.of(context)!.view,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 282,
                      ),
                      child: ColoredBox(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(top: 35, left: 39),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(AppLocalizations.of(context)!.employee,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xfF282828),
                                        )),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 29),
                                      child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 7),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(16),
                                              color: state.report!.status ==
                                                  "Pending"
                                                  ? Color(0xFFCAFFCF)
                                                  : const Color(0xFFF1F1F1)),
                                          child: Text(
                                            state.report!.status,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xfF282828)),
                                          )),
                                    ),
                                  ],
                                ),
                                Text(
                                    '${state.report!.firstname} ${state.report!.lastname}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xfF282828),
                                    )),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  children: [
                                    Text(
                                        AppLocalizations.of(context)!.unavailable,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.darkGrey)),
                                    SizedBox(
                                      width: 236,
                                    ),
                                    Text(AppLocalizations.of(context)!.type,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.darkGrey)),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Text(AppLocalizations.of(context)!.type,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black)),
                                    SizedBox(width: 75),
                                    Text(AppLocalizations.of(context)!.type,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black))
                                  ],
                                ),
                                SizedBox(
                                  height: 27,
                                ),
                                Text(AppLocalizations.of(context)!.reason,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.darkGrey)),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(state.report!.reason,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                                SizedBox(
                                  height: 49,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 21, right: 29),
                                      child: Text(
                                          state.report!.createdAt.toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                    )
                  ],
                );


          }),
    );
  }
}





//
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:industria/core/extensions/date.dart';
// import 'package:industria/domain/entities/holiday_request/holiday_request.dart';
// import 'package:intl/intl.dart';
// import '../../../core/constants/colors.dart';
// import '../../../core/utils/route_value.dart';
//
// class ViewReport extends StatefulWidget {
//
//   ViewReport({Key? key) : super(key: key);
//
//   @override
//   State<ViewReport> createState() => _ViewReportState();
// }
//
// class _ViewReportState extends State<ViewReport> {
//   ViewReportCubit viewReportCubit = sl<ViewReportCubit>();
//   late String formattedStartDate;
//   late String formattedEndDate;
//
//   @override
//   void initState() {
//     formattedStartDate =
//         DateFormat('MMMM dd, y').format(widget.paramValue.unavailableFrom);
//     formattedEndDate =
//         DateFormat('MMMM dd, y').format(widget.paramValue.unavailableTo);
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ColoredBox(
//         color: AppColors.background,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Padding(
//                 padding: MediaQuery.of(context).size.width > 1350
//                     ? EdgeInsets.only(top: 129, left: 300, bottom: 31)
//                     : EdgeInsets.symmetric(horizontal: 24),
//                 child: Row(
//                   children: [
//                     Text(AppLocalizations.of(context)!.report,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.w700,
//                           color: Colors.black,
//                         )),
//                     Text(' / ',
//                         style: const TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: Colors.black,
//                         )),
//                     Text(AppLocalizations.of(context)!.view,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.w400,
//                           color: Colors.black,
//                         ))
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: MediaQuery.of(context).size.width > 1350
//                     ? EdgeInsets.symmetric(horizontal: 282)
//                     : EdgeInsets.symmetric(horizontal: 24),
//                 child: ColoredBox(
//                     color: Colors.white,
//                     child: Padding(
//                       padding: EdgeInsets.only(top: 35, left: 39),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Text(AppLocalizations.of(context)!.employee,
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.w600,
//                                     color: Color(0xfF282828),
//                                   )),
//                               Spacer(),
//                               Padding(
//                                 padding: const EdgeInsets.only(right: 29),
//                                 child: Container(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 20, vertical: 7),
//                                     decoration: BoxDecoration(
//                                         borderRadius:
//                                             BorderRadius.circular(16),
//                                         color: widget.paramValue.status ==
//                                                 "Pending"
//                                             ? Color(0xFFCAFFCF)
//                                             : const Color(0xFFF1F1F1)),
//                                     child: Text(
//                                       widget.paramValue.status,
//                                       style: const TextStyle(
//                                           fontWeight: FontWeight.w600,
//                                           color: Color(0xfF282828)),
//                                     )),
//                               ),
//                             ],
//                           ),
//                           Text(
//                               '${widget.paramValue.firstname} ${widget.paramValue.lastname}',
//                               style: const TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 color: Color(0xfF282828),
//                               )),
//                           SizedBox(
//                             height: 25,
//                           ),
//                           Row(
//                             children: [
//                               Text(AppLocalizations.of(context)!.unavailable,
//                                   style: const TextStyle(
//                                       fontWeight: FontWeight.w600,
//                                       color: AppColors.darkGrey)),
//                               SizedBox(
//                                 width: 236,
//                               ),
//                               Text(AppLocalizations.of(context)!.type,
//                                   style: const TextStyle(
//                                       fontWeight: FontWeight.w600,
//                                       color: AppColors.darkGrey)),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 15,
//                           ),
//                           Row(
//                             children: [
//                               Text('${formattedStartDate} - ',
//                                   style: const TextStyle(
//                                       fontWeight: FontWeight.w400,
//                                       color: Colors.black,
//                                       fontSize: 14)),
//                               Text(formattedEndDate,
//                                   style: const TextStyle(
//                                       fontWeight: FontWeight.w400,
//                                       color: Colors.black,
//                                       fontSize: 14)),
//                               SizedBox(
//                                 width: 55,
//                               ),
//                               Text('${widget.paramValue.type}',
//                                   style: const TextStyle(
//                                       fontWeight: FontWeight.w400,
//                                       color: Colors.black,
//                                       fontSize: 14)),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 27,
//                           ),
//                           Text(AppLocalizations.of(context)!.reason,
//                               style: const TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   color: AppColors.darkGrey)),
//                           SizedBox(
//                             height: 15,
//                           ),
//                           Text(widget.paramValue.reason,
//                               style: const TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.black)),
//                           SizedBox(
//                             height: 49,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                     bottom: 21, right: 29),
//                                 child: Text(
//                                     widget.paramValue.createdAt.toString(),
//                                     style: const TextStyle(
//                                         fontWeight: FontWeight.w600,
//                                         color: Colors.black)),
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                     )),
//               )
//             ],
//           ),
//         ));
//   }
// }

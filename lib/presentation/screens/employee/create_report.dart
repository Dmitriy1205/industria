import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/domain/entities/holiday_request/holiday_request.dart';
import 'package:industria/domain/models/holiday_request_model.dart';
import 'package:industria/presentation/bloc/create_report/create_report_bloc.dart';
import '../../../core/constants/colors.dart';
import '../../../core/services/service_locator.dart';
import '../../../core/themes/theme.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../../widgets/app_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class CreateReport extends StatefulWidget {
  const CreateReport({Key? key}) : super(key: key);

  @override
  State<CreateReport> createState() => _CreateReportState();
}

class _CreateReportState extends State<CreateReport> {
  int _value = 1;

  bool isSelected = false;
  FocusNode startDate = FocusNode();
  FocusNode endDate = FocusNode();
  FocusNode reason = FocusNode();

  // DateTime? _startDate;
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController reasonController = TextEditingController();
  String reportType = 'Holiday request';
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateReportBloc, CreateReportState>(
      bloc: sl<CreateReportBloc>(),
      listener: (BuildContext context, CreateReportState state) {},
      child: ColoredBox(
          color: AppColors.background,
          child: Padding(
            padding: const EdgeInsets.only(left: 351, right: 253, top: 88),
            child: SingleChildScrollView(
              child: SizedBox(
                height: 700,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.createReport,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Expanded(
                      child: ColoredBox(
                        color: Colors.white,
                        child: Container(
                          height: 563,
                          width: 836,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 37, right: 51, top: 32, bottom: 41),
                            child: Form(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.type,
                                      style: AppTheme
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(
                                              color: AppColors.mainDarkAccent,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            ListTile(
                                              title: Text(
                                                AppLocalizations.of(context)!
                                                    .holiday_requests,
                                                style: AppTheme.themeData
                                                    .textTheme.labelMedium!
                                                    .copyWith(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400),
                                              ),
                                              leading: Radio(
                                                value: 1,
                                                groupValue: _value,
                                                activeColor:
                                                    AppColors.mainAccent,
                                                onChanged: (value) {
                                                  setState(() {
                                                    reportType =
                                                        'Holiday request';
                                                    _value = value!;
                                                  });
                                                },
                                              ),
                                            ),
                                            ListTile(
                                              title: Text(
                                                AppLocalizations.of(context)!
                                                    .absenceReport,
                                                style: AppTheme.themeData
                                                    .textTheme.labelMedium!
                                                    .copyWith(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400),
                                              ),
                                              leading: Radio(
                                                value: 2,
                                                groupValue: _value,
                                                activeColor:
                                                    AppColors.mainAccent,
                                                onChanged: (value) {
                                                  setState(() {
                                                    reportType =
                                                        'Absence report';
                                                    _value = value!;
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 38,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 340,
                                          child: CustomTextFormField(
                                            focusNode: startDate,
                                            type: CustomTextFormFieldType.date,
                                            onChange: (val) {
                                              setState(() {
                                                startDateController.text =
                                                    (val as DateTime).formatted;
                                                // _startDate = val;
                                              });
                                            },
                                            textController: startDateController,
                                            labelText:
                                                AppLocalizations.of(context)!
                                                    .startDate,
                                            validator: (String? _) {},
                                            textInputType:
                                                TextInputType.datetime,
                                            isSavePressed: false,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 48,
                                        ),
                                        SizedBox(
                                          width: 340,
                                          child: CustomTextFormField(
                                            focusNode: endDate,
                                            type: CustomTextFormFieldType.date,
                                            onChange: (val) {
                                              setState(() {
                                                endDateController.text =
                                                    (val as DateTime).formatted;
                                                // _startDate = val;
                                              });
                                            },
                                            textController: endDateController,
                                            labelText:
                                                AppLocalizations.of(context)!
                                                    .endDate,
                                            validator: (String? _) {},
                                            textInputType:
                                                TextInputType.datetime,
                                            isSavePressed: false,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 51,
                                    ),
                                    CustomTextFormField(
                                      maxLines: 10,
                                      height: 166,
                                      width: 748,
                                      focusNode: reason,
                                      textController: reasonController,
                                      labelText:
                                          AppLocalizations.of(context)!.reason,
                                      validator: (String? _) {},
                                      textInputType: TextInputType.datetime,
                                      onChange: (_) {},
                                      isSavePressed: false,
                                    ),
                                    const SizedBox(
                                      height: 51,
                                    ),
                                    AppElevatedButton(
                                      borderRadius: 15,
                                      text: AppLocalizations.of(context)!
                                          .createReport,
                                      textStyle: const TextStyle(fontSize: 14),
                                      onPressed: () {
                                        sl<CreateReportBloc>()
                                            .createReport(HolidayRequestModel(
                                          lastname: context
                                              .read<AuthBloc>()
                                              .state
                                              .employee!
                                              .lastname,
                                          firstname: context
                                              .read<AuthBloc>()
                                              .state
                                              .employee!
                                              .firstname,
                                          photoRef: context
                                              .read<AuthBloc>()
                                              .state
                                              .employee!
                                              .photoRef,
                                          reason: reasonController.text,
                                          employeeId: context
                                              .read<AuthBloc>()
                                              .state
                                              .employee!
                                              .id!,
                                          unavailableFrom: DateTime.parse(
                                              startDateController.text),
                                          unavailableTo: DateTime.parse(
                                              endDateController.text),
                                          type: reportType,
                                          read: false,
                                          status: 'Pending',
                                        ));
                                      },
                                      verticalPadding: 15,
                                    ),
                                    // SizedBox(height: 50,)
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

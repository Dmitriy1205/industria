import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/domain/repositories/holiday_requests/holiday_requests_repository_contract.dart';
import 'package:industria/presentation/bloc/create_report/create_report_bloc.dart';
import '../../../core/constants/colors.dart';
import '../../../core/services/service_locator.dart';
import '../../../core/themes/theme.dart';
import '../../../core/utils/toast.dart';
import '../../../core/validator/field_validator.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../../widgets/app_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class CreateReport extends StatefulWidget {
  const CreateReport({Key? key}) : super(key: key);

  @override
  State<CreateReport> createState() => _CreateReportState();
}

class _CreateReportState extends State<CreateReport> {
  final CreateReportBloc _createReportBloc = CreateReportBloc(
      holidayRequestsRepository: sl<HolidayRequestsRepository>());

  int _value = 1;
  bool isSelected = false;
  FocusNode startDate = FocusNode();
  FocusNode endDate = FocusNode();
  FocusNode reason = FocusNode();

  final _formKey = GlobalKey<FormState>();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController reasonController = TextEditingController();
  String reportType = 'Holiday request';
  DateTime date = DateTime.now();

  @override
  void dispose() {
    reasonController.dispose();
    startDateController.dispose();
    endDateController.dispose();
    startDate.dispose();
    endDate.dispose();
    reason.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<CreateReportBloc, CreateReportState>(
          bloc: _createReportBloc,
          listener: (context, CreateReportState state) {
            state.maybeMap(
                loading: (_) {
                  showProgressSnackBar(context);
                },
                success: (_) {
                  showSuccessSnackBar(context, "Created Report successfully!");
                  context.go('/employee/reports');
                },
                error: (value) {
                  showErrorSnackBar(context, "Failed to create Report!");
                },
                orElse: () {});
          },
          child: ColoredBox(
              color: AppColors.background,
              child: Padding(
                padding: MediaQuery.of(context).size.width > 1350
                    ? EdgeInsets.only(left: 351, right: 253, top: 88)
                    : EdgeInsets.symmetric(horizontal: 24),
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
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 37, right: 51, top: 32, bottom: 41),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                      Expanded(
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width >
                                                  1200
                                                  ? 340
                                                  : MediaQuery.of(context)
                                                  .size
                                                  .width *
                                                  0.3,
                                              child: CustomTextFormField(
                                                focusNode: startDate,
                                                type: CustomTextFormFieldType
                                                    .date,
                                                onChange: (val) {
                                                  setState(() {
                                                    startDateController.text =
                                                        (val as DateTime)
                                                            .formatted;
                                                    // _startDate = val;
                                                  });
                                                },
                                                textController:
                                                    startDateController,
                                                labelText:
                                                    AppLocalizations.of(
                                                            context)!
                                                        .startDate,
                                                validator: Validator.validate,
                                                textInputType:
                                                    TextInputType.datetime,
                                                isSavePressed: false,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 48,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                          .size
                                                          .width >
                                                      1200
                                                  ? 340
                                                  : MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.3,
                                              child: CustomTextFormField(
                                                focusNode: endDate,
                                                type: CustomTextFormFieldType
                                                    .date,
                                                onChange: (val) {
                                                  setState(() {
                                                    endDateController.text =
                                                        (val as DateTime)
                                                            .formatted;
                                                    // _startDate = val;
                                                  });
                                                },
                                                textController:
                                                    endDateController,
                                                labelText:
                                                    AppLocalizations.of(
                                                            context)!
                                                        .endDate,
                                                validator: Validator.validate,
                                                textInputType:
                                                    TextInputType.datetime,
                                                isSavePressed: false,
                                              ),
                                            )
                                          ],
                                        ),
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
                                        labelText: AppLocalizations.of(context)!
                                            .reason,
                                        validator: Validator.validate,
                                        textInputType: TextInputType.text,
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
                                        textStyle:
                                            const TextStyle(fontSize: 14),
                                        onPressed: () {
                                          if (!_formKey.currentState!
                                              .validate()) {
                                            print('notValid');
                                            return;
                                          }
                                          _createReportBloc.add(
                                              CreateReportEvent.createReport(
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
                                          reasonController.clear();
                                          startDateController.clear();
                                          endDateController.clear();
                                        },
                                        verticalPadding: 15,
                                      ),
                                      // SizedBox(height: 50,)
                                    ]),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ))),
    );
  }
}

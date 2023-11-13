import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/constants/nationalities.dart';
import 'package:industria/core/enums/job_types.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/core/utils/time.dart';
import 'package:industria/core/utils/toast.dart';
import 'package:industria/domain/entities/job_application_request/job_application_request.dart';
import 'package:industria/domain/entities/job_offer/job_offer.dart';
import 'package:industria/domain/repositories/job/job_repository_contract.dart';
import 'package:industria/presentation/bloc/job_application_feature/job_details/job_details.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';
import 'package:industria/presentation/widgets/bold_text_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:industria/presentation/widgets/dropdown_text_form_field.dart';
import 'package:industria/presentation/widgets/file_upload_widget.dart';
import 'package:industria/presentation/widgets/firebase_image.dart';

import '../../app/router.dart';
import '../../core/constants/colors.dart';
import '../../core/services/service_locator.dart';
import '../../core/themes/theme.dart';
import '../../core/utils/route_value.dart';
import '../../core/validator/field_validator.dart';
import '../bloc/job_application_feature/job_application/job_application_bloc.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/footer.dart';

class JobDescription extends StatefulWidget {
  const JobDescription({super.key});

  @override
  State<JobDescription> createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {
  final TextEditingController _firstnameController = TextEditingController();
  final FocusNode _firstnameFocus = FocusNode();

  final TextEditingController _lastnameController = TextEditingController();
  final FocusNode _lastnameFocus = FocusNode();

  final TextEditingController _dateOfBirthController = TextEditingController();
  final FocusNode _dateOfBirthFocus = FocusNode();
  DateTime? _dateOfBirth;

  final TextEditingController _citizenshipController = TextEditingController();
  final FocusNode _citizenshipFocus = FocusNode();

  final TextEditingController _genderController = TextEditingController();

  final TextEditingController _addressController = TextEditingController();
  final FocusNode _addressFocus = FocusNode();

  final TextEditingController _availableDateController =
      TextEditingController();
  final FocusNode _availableDateFocus = FocusNode();
  DateTime? _availableDate;

  List<TextEditingController> _questionsTextEditingControllers = [];
  List<FocusNode> _questionsFocusNodes = [];

  final _formKey = GlobalKey<FormState>();

  bool isSavePressed = false;
  bool isClickable = false;

  FileUploadPickResult? photo;
  FileUploadPickResult? cv;
  List<FileUploadPickResult> certificates = [];

  bool acceptPolicy = false;

  final JobDetailsCubit jobDetailsCubit =
      JobDetailsCubit(jobRepository: sl<JobRepository>());

  void _clickable(dynamic val) {
    if (_firstnameController.text.isEmpty ||
        _lastnameController.text.isEmpty ||
        _dateOfBirthController.text.isEmpty ||
        _citizenshipController.text.isEmpty ||
        _genderController.text.isEmpty ||
        _addressController.text.isEmpty ||
        _availableDateController.text.isEmpty ||
        photo == null ||
        cv == null ||
        !acceptPolicy) {
      setState(() {
        isClickable = false;
      });
    } else {
      setState(() {
        isClickable = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final paramValue = routeValue(context, "id");
      if (paramValue != null) {
        jobDetailsCubit.fetchJobApplicationById(paramValue);
      }
    });
  }

  @override
  void dispose() {
    _firstnameController.dispose();
    _firstnameFocus.dispose();
    _lastnameController.dispose();
    _lastnameFocus.dispose();
    _dateOfBirthController.dispose();
    _dateOfBirthFocus.dispose();
    _citizenshipController.dispose();
    _citizenshipFocus.dispose();
    _addressController.dispose();
    _addressFocus.dispose();
    _availableDateController.dispose();
    _availableDateFocus.dispose();
    _genderController.dispose();
    for (var controller in _questionsTextEditingControllers) {
      controller.dispose();
    }
    for (var focusNode in _questionsFocusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<JobApplicationBloc, JobApplicationState>(
      bloc: sl<JobApplicationBloc>(),
      listener: (context, state) {
        state.maybeMap(
            loading: (_) {
              showProgressSnackBar(context);
            },
            success: (_) {
              showSuccessSnackBar(context);
            },
            error: (_) {
              showErrorSnackBar(
                  context, "Server error while applying for a job");
            },
            orElse: () {});
      },
      child: BlocConsumer<JobDetailsCubit, JobOffer?>(
        listener: (context, state) {
          if (state != null) {
            _questionsTextEditingControllers = List.generate(
                state.questions.length, (index) => TextEditingController());
            _questionsFocusNodes =
                List.generate(state.questions.length, (index) => FocusNode());
          }
        },
        bloc: jobDetailsCubit,
        builder: (context, state) => state == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SelectionArea(
                child: LayoutBuilder(
                  builder: (context, constraints) => Scaffold(
                    body: CustomScrollView(
                      slivers: <Widget>[
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 70.0,
                                left: constraints.maxWidth < 1000 ? 24 : 260,
                                right: constraints.maxWidth < 1000 ? 24 : 260),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {
                                        router.go('/jobs');
                                      },
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.arrow_back_ios_new,
                                            color: AppColors.mainAccent,
                                            size: 14,
                                          ),
                                          const SizedBox(
                                            width: 18,
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!
                                                .backToJobs,
                                            style: AppTheme.themeData.textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    color:
                                                        AppColors.mainAccent),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              state.title,
                                              softWrap: true,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineLarge
                                                  ?.copyWith(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 32),
                                            ),
                                            Text(
                                              JobTypes.fromString(state.jobType)!
                                                  .localizedString(context),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineLarge
                                                  ?.copyWith(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 60,),
                                      FirebaseImage(
                                          storageRef: state.company.logo)
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  _iconTextTile(FontAwesomeIcons.solidBuilding,
                                      state.companyName),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  _iconTextTile(FontAwesomeIcons.locationArrow,
                                      state.location),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  _iconTextTile(
                                      FontAwesomeIcons.moneyBill, state.salary),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  _iconTextTile(
                                      FontAwesomeIcons.calendarWeek,
                                      getTimeAgo(
                                          state.createdAt,
                                          context
                                              .watch<LocalizationBloc>()
                                              .state
                                              .locale
                                              .languageCode)),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!
                                        .jobDescription,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge
                                        ?.copyWith(fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  BoldTextWidget(
                                    text: state.description,
                                    style: const TextStyle(),
                                  ),
                                  const SizedBox(
                                    height: 60,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: CustomTextFormField(
                                          focusNode: _firstnameFocus,
                                          textController: _firstnameController,
                                          labelText:
                                              AppLocalizations.of(context)!
                                                      .firstname +
                                                  "*",
                                          validator: Validator.validate,
                                          textInputType: TextInputType.text,
                                          isSavePressed: isSavePressed,
                                          onChange: _clickable,
                                          maxLines: 1,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: CustomTextFormField(
                                          focusNode: _lastnameFocus,
                                          textController: _lastnameController,
                                          labelText:
                                              AppLocalizations.of(context)!
                                                      .lastname +
                                                  "*",
                                          validator: Validator.validate,
                                          textInputType: TextInputType.text,
                                          isSavePressed: isSavePressed,
                                          onChange: _clickable,
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      if (constraints.maxWidth < 1000) {
                                        return Column(
                                          children: [
                                            Row(
                                              children: [
                                                CustomTextFormField(
                                                  width:
                                                      constraints.maxWidth / 2 -
                                                          8,
                                                  focusNode: _dateOfBirthFocus,
                                                  textController:
                                                      _dateOfBirthController,
                                                  type: CustomTextFormFieldType
                                                      .date,
                                                  labelText:
                                                      AppLocalizations.of(
                                                                  context)!
                                                              .dateOfBirth +
                                                          "*",
                                                  validator: Validator.validate,
                                                  textInputType:
                                                      TextInputType.text,
                                                  isSavePressed: isSavePressed,
                                                  onChange: (v) {
                                                    setState(() {
                                                      _dateOfBirth =
                                                          v as DateTime;
                                                      _dateOfBirthController
                                                          .text = v.formatted;
                                                    });
                                                    _clickable(v);
                                                  },
                                                  maxLines: 1,
                                                ),
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                DropdownTextFormField(
                                                  validator: (val) {
                                                    final error =
                                                        Validator.validate(val);
                                                    if (error != null) {
                                                      return error;
                                                    }

                                                    if (!["Male", "Female"]
                                                        .contains(val)) {
                                                      return "Doesn't match proposed ones";
                                                    }
                                                  },
                                                  isSavePressed: isSavePressed,
                                                  controller: _genderController,
                                                  variants: ["Male", "Female"],
                                                  onChanged: _clickable,
                                                  hintText: AppLocalizations.of(
                                                              context)!
                                                          .gender +
                                                      "*",
                                                  width:
                                                      constraints.maxWidth / 2 -
                                                          8,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            DropdownTextFormField(
                                              validator: (val) {
                                                final error =
                                                    Validator.validate(val);
                                                if (error != null) {
                                                  return error;
                                                }

                                                if (!Nationalities.list
                                                    .contains(val)) {
                                                  return "Doesn't match proposed ones";
                                                }
                                              },
                                              isSavePressed: isSavePressed,
                                              onChanged: _clickable,
                                              controller:
                                                  _citizenshipController,
                                              variants: Nationalities.list,
                                              hintText:
                                                  AppLocalizations.of(context)!
                                                          .citizenship +
                                                      "*",
                                              width: constraints.maxWidth,
                                            ),
                                          ],
                                        );
                                      }
                                      return Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomTextFormField(
                                            width: constraints.maxWidth / 4,
                                            focusNode: _dateOfBirthFocus,
                                            textController:
                                                _dateOfBirthController,
                                            type: CustomTextFormFieldType.date,
                                            labelText:
                                                AppLocalizations.of(context)!
                                                        .dateOfBirth +
                                                    "*",
                                            validator: Validator.validate,
                                            textInputType: TextInputType.text,
                                            isSavePressed: isSavePressed,
                                            onChange: (v) {
                                              setState(() {
                                                _dateOfBirth = v as DateTime;
                                                _dateOfBirthController.text =
                                                    v.formatted;
                                              });
                                              _clickable(v);
                                            },
                                            maxLines: 1,
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          DropdownTextFormField(
                                            validator: (val) {
                                              final error =
                                                  Validator.validate(val);
                                              if (error != null) {
                                                return error;
                                              }

                                              if (!Nationalities.list
                                                  .contains(val)) {
                                                return "Doesn't match proposed ones";
                                              }
                                            },
                                            isSavePressed: isSavePressed,
                                            onChanged: _clickable,
                                            controller: _citizenshipController,
                                            variants: Nationalities.list,
                                            hintText:
                                                AppLocalizations.of(context)!
                                                        .citizenship +
                                                    "*",
                                            width:
                                                constraints.maxWidth / 2 - 16,
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          DropdownTextFormField(
                                            validator: (val) {
                                              final error =
                                                  Validator.validate(val);
                                              if (error != null) {
                                                return error;
                                              }

                                              if (!["Male", "Female"]
                                                  .contains(val)) {
                                                return "Doesn't match proposed ones";
                                              }
                                            },
                                            isSavePressed: isSavePressed,
                                            controller: _genderController,
                                            variants: ["Male", "Female"],
                                            onChanged: _clickable,
                                            hintText:
                                                AppLocalizations.of(context)!
                                                        .gender +
                                                    "*",
                                            width:
                                                constraints.maxWidth / 4 - 16,
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  CustomTextFormField(
                                    focusNode: _addressFocus,
                                    textController: _addressController,
                                    labelText:
                                        AppLocalizations.of(context)!.address +
                                            "*",
                                    validator: Validator.validate,
                                    textInputType: TextInputType.text,
                                    isSavePressed: isSavePressed,
                                    onChange: _clickable,
                                    maxLines: 1,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  CustomTextFormField(
                                    focusNode: _availableDateFocus,
                                    textController: _availableDateController,
                                    type: CustomTextFormFieldType.date,
                                    labelText: AppLocalizations.of(context)!
                                            .availabilityDate +
                                        "*",
                                    validator: Validator.validate,
                                    textInputType: TextInputType.text,
                                    isSavePressed: isSavePressed,
                                    onChange: (v) {
                                      setState(() {
                                        _availableDate = v as DateTime;
                                        _availableDateController.text =
                                            v.formatted;
                                      });
                                      _clickable(v);
                                    },
                                    maxLines: 1,
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.questions,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ...state.questions.asMap().entries.map((e) =>
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _questionInput(
                                              focusNode:
                                                  _questionsFocusNodes[e.key],
                                              controller:
                                                  _questionsTextEditingControllers[
                                                      e.key],
                                              question: e.value),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                        ],
                                      )),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Wrap(
                                    runSpacing: 5,
                                    spacing: 40,
                                    children: [
                                      SizedBox(
                                        height: 200,
                                        child: FileUploadFormWidget(
                                            mandatory: true,
                                            allowedTypes: [
                                              "png",
                                              "jpg",
                                              "jpeg"
                                            ],
                                            singlePick: true,
                                            validationError: "Missing picture",
                                            icon: FontAwesomeIcons.solidUser,
                                            hint: AppLocalizations.of(context)!
                                                .dragPicture,
                                            pickedFilesNames: photo == null
                                                ? []
                                                : [photo!.filename],
                                            onPick: (file) {
                                              setState(() {
                                                photo = file.first;
                                              });
                                              _clickable(photo);
                                            }),
                                      ),
                                      SizedBox(
                                        height: 200,
                                        child: FileUploadFormWidget(
                                            allowedTypes: ["pdf"],
                                            mandatory: true,
                                            validationError: "Missing cv",
                                            singlePick: true,
                                            icon: FontAwesomeIcons.solidFile,
                                            hint: AppLocalizations.of(context)!
                                                .dragCv,
                                            pickedFilesNames: cv == null
                                                ? []
                                                : [cv!.filename],
                                            onPick: (file) {
                                              setState(() {
                                                cv = file.first;
                                              });
                                              _clickable(cv);
                                            }),
                                      ),
                                      SizedBox(
                                        height: 200,
                                        child: FileUploadFormWidget(
                                            allowedTypes: [
                                              "pdf",
                                              "png",
                                              "jpeg",
                                              "jpg"
                                            ],
                                            singlePick: false,
                                            mandatory: false,
                                            icon: FontAwesomeIcons.solidFile,
                                            hint: AppLocalizations.of(context)!
                                                .dragCertificates,
                                            pickedFilesNames: certificates
                                                .map((e) => e.filename)
                                                .toList(),
                                            onPick: (files) {
                                              setState(() {
                                                certificates = files;
                                              });
                                            }),
                                      ),
                                    ].map((e) => e).toList(),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!
                                        .mandatoryFields,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall
                                        ?.copyWith(fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                          value: acceptPolicy,
                                          onChanged: (val) {
                                            setState(() {
                                              acceptPolicy = val!;
                                            });
                                            _clickable(val);
                                          }),
                                      const SizedBox(
                                        width: 19,
                                      ),
                                      Expanded(
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: AppLocalizations.of(
                                                        context)!
                                                    .iAcceptApplicationDataProtectionPolicy,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall,
                                              ),
                                              TextSpan(
                                                text: AppLocalizations.of(
                                                        context)!
                                                    .dataProtection
                                                    .trim(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall
                                                    ?.copyWith(
                                                        color: AppColors
                                                            .mainDarkAccent),
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () {
                                                        context.push(
                                                            '/dataprotection');
                                                      },
                                              ),
                                              TextSpan(
                                                text:
                                                    ' ${AppLocalizations.of(context)!.iAcceptApplicationDataProtectionPolicy}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  AppElevatedButton(
                                      verticalPadding: 10,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(color: Colors.white),
                                      color: isClickable
                                          ? null
                                          : AppColors.lightGrey,
                                      text: AppLocalizations.of(context)!.send,
                                      onPressed: () {
                                        if (!isClickable) {
                                          return;
                                        }
                                        if (!isSavePressed) {
                                          setState(() {
                                            isSavePressed = true;
                                          });
                                        }

                                        final valid =
                                            _formKey.currentState!.validate();
                                        if (!valid) return;

                                        final jobApplicationRequest = JobApplicationRequest(
                                            questionAnswers:
                                                state.questions.asMap().entries.map((e) => {e.value: _questionsTextEditingControllers[e.key].text}).fold(
                                                    {},
                                                    (previousValue, element) => {
                                                          ...previousValue,
                                                          ...element
                                                        }),
                                            offer: state,
                                            firstname:
                                                _firstnameController.text,
                                            lastname: _lastnameController.text,
                                            birthday: _dateOfBirth!,
                                            citizenship:
                                                _citizenshipController.text,
                                            gender: _genderController.text,
                                            address: _addressController.text,
                                            availableDate: _availableDate!,
                                            company: state.company,
                                            documents: JobApplicationRequestDocuments(
                                                photo: JobApplicationRequestDocument(
                                                    bytes: photo!.bytes,
                                                    extension: photo!.filename
                                                        .split(".")
                                                        .last),
                                                cv: JobApplicationRequestDocument(
                                                    bytes: cv!.bytes,
                                                    extension: cv!.filename
                                                        .split(".")
                                                        .last),
                                                certificates: certificates
                                                    .map((e) =>
                                                        JobApplicationRequestDocument(
                                                            bytes: e.bytes,
                                                            extension: e.filename.split(".").last))
                                                    .toList()));
                                        sl<JobApplicationBloc>().add(
                                            JobApplicationEvent.applyJob(
                                                jobApplicationRequest:
                                                    jobApplicationRequest));
                                      }),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Footer(),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  Widget _questionInput(
      {required String question,
      required TextEditingController controller,
      required FocusNode focusNode}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question),
        SizedBox(
          height: 15,
        ),
        CustomTextFormField(
          textController: controller,
          focusNode: focusNode,
          labelText: "${AppLocalizations.of(context)!.answer}*",
          validator: Validator.validate,
          textInputType: TextInputType.text,
          isSavePressed: isSavePressed,
          onChange: (v) {
            _clickable(v);
          },
          maxLines: 1,
        ),
      ],
    );
  }

  Widget _iconTextTile(IconData icon, String text) {
    return Row(
      children: [
        SizedBox(
            width: 20,
            height: 22,
            child: Icon(
              icon,
              size: 20,
              color: AppColors.mainDarkAccent,
            )),
        const SizedBox(
          width: 14,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 14),
        )
      ],
    );
  }
}

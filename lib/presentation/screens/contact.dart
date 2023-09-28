import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:industria/domain/entities/contact_requests/contact_requests.dart';
import 'package:industria/presentation/bloc/contact_requests/contact_request_bloc.dart';
import 'package:industria/presentation/widgets/custom_text_form_field.dart';
import 'package:industria/presentation/widgets/steps.dart';

import '../../app/router.dart';
import '../../core/constants/colors.dart';
import '../../core/services/service_locator.dart';
import '../../core/themes/theme.dart';
import '../../core/utils/toast.dart';
import '../../core/validator/field_validator.dart';
import '../../data/remote/contact_requests/contact_requests_service_contract.dart';
import '../../domain/repositories/contact_request/contact_request_repository_contract.dart';
import '../../domain/repositories/contact_request/contact_request_repository_impl.dart';
import '../widgets/app_elevated_button.dart';
import '../widgets/footer.dart';

class Contact extends StatefulWidget {
  Contact({super.key});

  // ContactRequestsRepositoryImpl contactRequestsRepositoryImpl =
  //     ContactRequestsRepositoryImpl(db: sl<ContactRequestsRepository>());

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _companyNameNameController =
      TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  bool _checkboxValue = true;
  bool isSavePressed = false;

  final _formKey = GlobalKey<FormState>();
  final FocusNode _firstNameFocusNode = FocusNode();
  final FocusNode _lastNameFocusNode = FocusNode();
  final FocusNode _companyNameFocusNode = FocusNode();
  final FocusNode _phoneNumberFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _descriptionFocusNode = FocusNode();

  bool isHoveredButton = false;
  bool _isClickable = false;
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  void _clickable(_) {
    if (_firstNameController.text.isEmpty ||
        _lastNameController.text.isEmpty ||
        _companyNameNameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _phoneNumberController.text.isEmpty ||
        _descriptionController.text.isEmpty) {
      setState(() {
        _isClickable = false;
      });
      print('_isClickable = false ');
    } else {
      setState(() {
        _isClickable = true;
      });
      print('_isClickable = true');
    }
  }

  @override
  void initState() {
    super.initState();
    _firstNameFocusNode.addListener(() => setState(() {}));
    _lastNameFocusNode.addListener(() => setState(() {}));
    _companyNameFocusNode.addListener(() => setState(() {}));
    _phoneNumberFocusNode.addListener(() => setState(() {}));
    _emailFocusNode.addListener(() => setState(() {}));
    _descriptionFocusNode.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ContactRequestBloc, ContactRequestState>(
      bloc: sl<ContactRequestBloc>(),
      listener: (context, state) {
        state.maybeMap(
            loading: (_) {
              showProgressSnackBar(context);
            },
            success: (_) {
              showSuccessSnackBar(context);
              _firstNameController.clear();
              _lastNameController.clear();
              _companyNameNameController.clear();
              _emailController.clear();
              _phoneNumberController.clear();
              _descriptionController.clear();
              isSavePressed = false;
            },
            error: (_) {
              showErrorSnackBar(
                  context, "Server error while sending data");
            },
            orElse: () {});
      },
      child: ScaffoldMessenger(
        key: _scaffoldMessengerKey,
        child: Scaffold(
          body: LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth < 1100) {
              return CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 45.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.contactUs,
                            style: AppTheme.themeData.textTheme.headlineLarge,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            color: AppColors.mainAccent,
                            height: 4,
                            width: 110,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 116,
                                left: constraints.maxWidth < 700 ? 24 : MediaQuery.of(context).size.width / 11,
                                right: constraints.maxWidth < 700 ? 24 : MediaQuery.of(context).size.width / 11),
                            child: Form(
                              key: _formKey,
                              child: IntrinsicWidth(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Flexible(
                                          child: CustomTextFormField(
                                              focusNode: _firstNameFocusNode,
                                              textController: _firstNameController,
                                              labelText:
                                                  AppLocalizations.of(context)!
                                                      .firstname,
                                              validator: Validator.validate,
                                              textInputType: TextInputType.text,
                                              isSavePressed: isSavePressed,
                                              onChange: _clickable,
                                              width: 244),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        Flexible(
                                          child: CustomTextFormField(
                                              focusNode: _lastNameFocusNode,
                                              textController: _lastNameController,
                                              labelText:
                                                  AppLocalizations.of(context)!
                                                      .lastname,
                                              validator: Validator.validate,
                                              textInputType: TextInputType.text,
                                              isSavePressed: isSavePressed,
                                              onChange: _clickable,
                                              width: 244),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Flexible(
                                          child: CustomTextFormField(
                                              focusNode: _companyNameFocusNode,
                                              textController:
                                                  _companyNameNameController,
                                              labelText:
                                                  AppLocalizations.of(context)!
                                                      .companyName,
                                              validator: Validator.validate,
                                              textInputType: TextInputType.text,
                                              isSavePressed: isSavePressed,
                                              onChange: _clickable,
                                              width: 244),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        Flexible(
                                          child: CustomTextFormField(
                                              focusNode: _phoneNumberFocusNode,
                                              textController:
                                                  _phoneNumberController,
                                              labelText:
                                                  AppLocalizations.of(context)!
                                                      .phoneNumber,
                                              validator: Validator.validatePhone,
                                              textInputType: TextInputType.phone,
                                              isSavePressed: isSavePressed,
                                              onChange: _clickable,
                                              width: 244),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 26,
                                    ),
                                    CustomTextFormField(
                                        focusNode: _emailFocusNode,
                                        textController: _emailController,
                                        labelText:
                                            AppLocalizations.of(context)!.email,
                                        validator: Validator.validateEmail,
                                        textInputType: TextInputType.emailAddress,
                                        isSavePressed: isSavePressed,
                                        onChange: _clickable,
                                        width: 521),
                                    const SizedBox(
                                      height: 35,
                                    ),
                                    CustomTextFormField(
                                      focusNode: _descriptionFocusNode,
                                      textController: _descriptionController,
                                      labelText: AppLocalizations.of(context)!
                                          .description,
                                      validator: Validator.validate,
                                      textInputType: TextInputType.text,
                                      isSavePressed: isSavePressed,
                                      onChange: _clickable,
                                      width: 521,
                                      height: 86,
                                      maxLines: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 26,
                                            width: 26,
                                            child: Checkbox(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5)),
                                                activeColor: AppColors.mainAccent,
                                                value: _checkboxValue,
                                                onChanged: (checkbox) {
                                                  setState(() {
                                                    _checkboxValue = checkbox!;
                                                  });
                                                  print(
                                                      '_checkboxValue $_checkboxValue');
                                                }),
                                          ),
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
                                                  style: AppTheme.themeData
                                                      .textTheme.labelSmall!
                                                      .copyWith(
                                                    color: AppColors.darkGrey,
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: AppLocalizations.of(
                                                            context)!
                                                        .dataProtection,
                                                    style: AppTheme.themeData
                                                        .textTheme.labelSmall!
                                                        .copyWith(
                                                            color: AppColors
                                                                .mainAccent),
                                                    mouseCursor:
                                                        SystemMouseCursors.click),
                                                TextSpan(
                                                  text:
                                                      AppLocalizations.of(context)!
                                                          .policy,
                                                  style: AppTheme.themeData
                                                      .textTheme.labelSmall!
                                                      .copyWith(
                                                          color:
                                                              AppColors.darkGrey),
                                                ),
                                              ],
                                            )),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 36,
                                    ),
                                    SizedBox(
                                      width: 521,
                                      child: MouseRegion(
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
                                            text: AppLocalizations.of(context)!
                                                .send,
                                            color: isHoveredButton
                                                ? AppColors.mainDarkAccent
                                                : AppColors.mainAccent,
                                            textStyle: AppTheme
                                                .themeData.textTheme.labelSmall!
                                                .copyWith(color: Colors.white),
                                            onPressed: _isClickable &&
                                                    _checkboxValue
                                                ? () {
                                                    isSavePressed = true;
                                                    print('pressed');
                                                    if (_formKey.currentState!
                                                        .validate()) {
                                                      sl<ContactRequestBloc>()
                                                          .add(ContactRequestEvent
                                                              .sendContactRequest(
                                                                  contactRequests:
                                                                      ContactRequests(
                                                        firstname:
                                                            _firstNameController
                                                                .text,
                                                        lastname:
                                                            _lastNameController
                                                                .text,
                                                        companyName:
                                                            _companyNameNameController
                                                                .text,
                                                        phoneNumber:
                                                            _phoneNumberController
                                                                .text,
                                                        email:
                                                            _emailController.text,
                                                        description:
                                                            _descriptionController
                                                                .text,
                                                      )));
                                                    }
                                                  }
                                                : null),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 161,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Footer(),
                ],
              );
            } else {
              return desktop(context);
            }
          }),
        ),
      ),
    );
  }

  CustomScrollView desktop(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 45.0),
            child: Column(
              children: [
                Text(
                  AppLocalizations.of(context)!.contactUs,
                  style: AppTheme.themeData.textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: AppColors.mainAccent,
                  height: 4,
                  width: 110,
                ),
                const SizedBox(
                  height: 47,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 101.0, right: 120, top: 129),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  AppLocalizations.of(context)!
                                      .whatWillBeNextStep,
                                  style: AppTheme
                                      .themeData.textTheme.headlineMedium!
                                      .copyWith(
                                          color: Colors.black, fontSize: 24)),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                AppLocalizations.of(context)!
                                    .youAreOneStepCloseToFind,
                                style: AppTheme.themeData.textTheme.titleMedium,
                                overflow: TextOverflow.visible,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Steps()
                            ]),
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomTextFormField(
                                  focusNode: _firstNameFocusNode,
                                  textController: _firstNameController,
                                  labelText:
                                      AppLocalizations.of(context)!.firstname,
                                  validator: Validator.validate,
                                  textInputType: TextInputType.text,
                                  isSavePressed: isSavePressed,
                                  onChange: _clickable,
                                  width: 244),
                              const SizedBox(
                                width: 30,
                              ),
                              CustomTextFormField(
                                  focusNode: _lastNameFocusNode,
                                  textController: _lastNameController,
                                  labelText:
                                      AppLocalizations.of(context)!.lastname,
                                  validator: Validator.validate,
                                  textInputType: TextInputType.text,
                                  isSavePressed: isSavePressed,
                                  onChange: _clickable,
                                  width: 244),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              CustomTextFormField(
                                  focusNode: _companyNameFocusNode,
                                  textController: _companyNameNameController,
                                  labelText:
                                      AppLocalizations.of(context)!.companyName,
                                  validator: Validator.validate,
                                  textInputType: TextInputType.text,
                                  isSavePressed: isSavePressed,
                                  onChange: _clickable,
                                  width: 244),
                              const SizedBox(
                                width: 30,
                              ),
                              CustomTextFormField(
                                  focusNode: _phoneNumberFocusNode,
                                  textController: _phoneNumberController,
                                  labelText:
                                      AppLocalizations.of(context)!.phoneNumber,
                                  validator: Validator.validatePhone,
                                  textInputType: TextInputType.phone,
                                  isSavePressed: isSavePressed,
                                  onChange: _clickable,
                                  width: 244),
                            ],
                          ),
                          const SizedBox(
                            height: 26,
                          ),
                          CustomTextFormField(
                              focusNode: _emailFocusNode,
                              textController: _emailController,
                              labelText: AppLocalizations.of(context)!.email,
                              validator: Validator.validateEmail,
                              textInputType: TextInputType.emailAddress,
                              isSavePressed: isSavePressed,
                              onChange: _clickable,
                              width: 521),
                          const SizedBox(
                            height: 35,
                          ),
                          CustomTextFormField(
                            focusNode: _descriptionFocusNode,
                            textController: _descriptionController,
                            labelText:
                                AppLocalizations.of(context)!.description,
                            validator: Validator.validate,
                            textInputType: TextInputType.text,
                            isSavePressed: isSavePressed,
                            onChange: _clickable,
                            width: 521,
                            height: 86,
                            maxLines: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 26,
                                  width: 26,
                                  child: Checkbox(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      activeColor: AppColors.mainAccent,
                                      value: _checkboxValue,
                                      onChanged: (_checkbox) {
                                        print('_checkboxValue $_checkboxValue');
                                        setState(() {
                                          _checkboxValue = _checkbox!;
                                        });
                                      }),
                                ),
                                const SizedBox(
                                  width: 19,
                                ),
                                RichText(
                                    text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: AppLocalizations.of(context)!
                                          .iAcceptApplicationDataProtectionPolicy,
                                      style: AppTheme
                                          .themeData.textTheme.labelSmall!
                                          .copyWith(
                                        color: AppColors.darkGrey,
                                      ),
                                    ),
                                    TextSpan(
                                        text: AppLocalizations.of(context)!
                                            .dataProtection,
                                        style: AppTheme
                                            .themeData.textTheme.labelSmall!
                                            .copyWith(
                                                color: AppColors.mainAccent),
                                        mouseCursor: SystemMouseCursors.click,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            router.go('/dataprotection');
                                          }),
                                    TextSpan(
                                      text:
                                          AppLocalizations.of(context)!.policy,
                                      style: AppTheme
                                          .themeData.textTheme.labelSmall!
                                          .copyWith(color: AppColors.darkGrey),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 36,
                          ),
                          SizedBox(
                            width: 521,
                            child: MouseRegion(
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
                                  text: AppLocalizations.of(context)!.send,
                                  verticalPadding: 10,
                                  color: isHoveredButton
                                      ? AppColors.mainDarkAccent
                                      : AppColors.mainAccent,
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(color: Colors.white),
                                  onPressed: _isClickable && _checkboxValue
                                      ? () {
                                          isSavePressed = true;
                                          print('pressed1 $_checkboxValue');
                                          if (_formKey.currentState!
                                              .validate()) {
                                            print('validated');
                                            sl<ContactRequestBloc>().add(
                                                ContactRequestEvent
                                                    .sendContactRequest(
                                                        contactRequests:
                                                            ContactRequests(
                                              firstname:
                                                  _firstNameController.text,
                                              lastname:
                                                  _lastNameController.text,
                                              companyName:
                                                  _companyNameNameController
                                                      .text,
                                              phoneNumber:
                                                  _phoneNumberController.text,
                                              email: _emailController.text,
                                              description:
                                                  _descriptionController.text,
                                            )));
                                          }
                                        }
                                      : null),
                            ),
                          ),
                        ],
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
        const Footer(),
      ],
    );
  }
}

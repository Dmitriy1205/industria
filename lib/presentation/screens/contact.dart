import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:industria/presentation/widgets/custom_text_form_field.dart';
import 'package:industria/presentation/widgets/steps.dart';

import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../../core/validator/field_validator.dart';
import '../widgets/app_elevated_button.dart';
import '../widgets/footer.dart';

class Contact extends StatefulWidget {
  Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _companyNameNameController = TextEditingController();
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

  void _clickable() {
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
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
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
                      SizedBox(
                        child: Text(
                          AppLocalizations.of(context)!.wannaContactUs,
                          textAlign: TextAlign.center,
                          style: AppTheme.themeData.textTheme.titleMedium!
                              .copyWith(
                                  fontSize: 18,
                                  color: AppColors.darkGrey,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 116,
                            left: MediaQuery.of(context).size.width / 11,
                            right: MediaQuery.of(context).size.width / 11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextFormField(
                                    focusNode: _firstNameFocusNode,
                                    textController: _firstNameController,
                                    labelText:
                                        AppLocalizations.of(context)!.firstname,
                                    validator: Validator.validate,
                                    textInputType: TextInputType.text,
                                    onChange: _clickable,
                                    isSavePressed: isSavePressed,
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  child: CustomTextFormField(
                                    focusNode: _lastNameFocusNode,
                                    textController: _lastNameController,
                                    labelText:
                                        AppLocalizations.of(context)!.lastname,
                                    validator: Validator.validate,
                                    textInputType: TextInputType.text,
                                    onChange: _clickable,
                                    isSavePressed: isSavePressed,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextFormField(
                                    focusNode: _companyNameFocusNode,
                                    textController: _companyNameNameController,
                                    labelText: AppLocalizations.of(context)!
                                        .companyName,
                                    validator: Validator.validate,
                                    textInputType: TextInputType.text,
                                    onChange: _clickable,
                                    isSavePressed: isSavePressed,
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  child: CustomTextFormField(
                                    focusNode: _phoneNumberFocusNode,
                                    textController: _phoneNumberController,
                                    labelText: AppLocalizations.of(context)!
                                        .phoneNumber,
                                    validator: Validator.validatePhone,
                                    inputFormatter:
                                        FilteringTextInputFormatter.digitsOnly,
                                    textInputType: TextInputType.phone,
                                    isSavePressed: isSavePressed,
                                    onChange: _clickable,
                                    width: 244,
                                  ),
                                ),
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
                              width: 521,
                            ),
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
                                          mouseCursor:
                                              SystemMouseCursors.click),
                                      TextSpan(
                                        text: AppLocalizations.of(context)!
                                            .policy,
                                        style: AppTheme
                                            .themeData.textTheme.labelSmall!
                                            .copyWith(
                                                color: AppColors.darkGrey),
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
                                    color: isHoveredButton
                                        ? AppColors.mainDarkAccent
                                        : AppColors.mainAccent,
                                    textStyle: AppTheme
                                        .themeData.textTheme.labelSmall!
                                        .copyWith(color: Colors.white),
                                    onPressed: _isClickable
                                        ? () {
                                            isSavePressed = true;
                                            print('pressed');
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(const SnackBar(
                                              backgroundColor:
                                              AppColors.lightGrey,
                                              behavior: SnackBarBehavior.floating,
                                              content: Text(
                                                'Data sending in progress..',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              duration: Duration(seconds: 3),
                                            ));
                                          }
                                        : null),
                              ),
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
        } else if (constraints.maxWidth < 1100) {
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
                      SizedBox(
                        child: Text(
                          AppLocalizations.of(context)!.wannaContactUs,
                          textAlign: TextAlign.center,
                          style: AppTheme.themeData.textTheme.titleMedium!
                              .copyWith(
                                  fontSize: 18,
                                  color: AppColors.darkGrey,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 116,
                            left: MediaQuery.of(context).size.width / 11,
                            right: MediaQuery.of(context).size.width / 11),
                        child: Form(key: _formKey,
                          child: Column(
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
                                      labelText: AppLocalizations.of(context)!
                                          .companyName,
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
                                      labelText: AppLocalizations.of(context)!
                                          .phoneNumber,
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
                                            mouseCursor:
                                                SystemMouseCursors.click),
                                        TextSpan(
                                          text: AppLocalizations.of(context)!
                                              .policy,
                                          style: AppTheme
                                              .themeData.textTheme.labelSmall!
                                              .copyWith(
                                                  color: AppColors.darkGrey),
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
                                      color: isHoveredButton
                                          ? AppColors.mainDarkAccent
                                          : AppColors.mainAccent,
                                      textStyle: AppTheme
                                          .themeData.textTheme.labelSmall!
                                          .copyWith(color: Colors.white),
                                      onPressed: _isClickable
                                          ? () {
                                              isSavePressed = true;
                                              print('pressed');
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                backgroundColor:
                                                AppColors.lightGrey,
                                                behavior: SnackBarBehavior.floating,
                                                content: Text(
                                                  'Data sending in progress..',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                                duration: Duration(seconds: 3),
                                              ));
                                            }
                                          : null),
                                ),
                              ),
                            ],
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
                SizedBox(
                  child: Text(
                    AppLocalizations.of(context)!.wannaContactUs,
                    textAlign: TextAlign.center,
                    style: AppTheme.themeData.textTheme.titleMedium!.copyWith(
                        fontSize: 18,
                        color: AppColors.darkGrey,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 101.0, right: 120, top: 129),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
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
                                        mouseCursor: SystemMouseCursors.click),
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
                                  color: isHoveredButton
                                      ? AppColors.mainDarkAccent
                                      : AppColors.mainAccent,
                                  textStyle: AppTheme
                                      .themeData.textTheme.labelSmall!
                                      .copyWith(color: Colors.white),
                                  onPressed: _isClickable
                                      ? () {
                                          isSavePressed = true;
                                          print('pressed');
                                          // if(_formKey.currentState!.mounted){
                                          //   print('validate');

                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(const SnackBar(
                                              backgroundColor:
                                                  AppColors.lightGrey,
                                              behavior:
                                                  SnackBarBehavior.floating,
                                              content: Text(
                                                'Data sending in progress..',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              duration: Duration(seconds: 3),
                                            ));
                                          // }
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

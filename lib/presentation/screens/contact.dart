import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:industria/presentation/widgets/steps.dart';

import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../widgets/footer.dart';

class Contact extends StatefulWidget {
  Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  TextEditingController _firstNameController = TextEditingController();

  TextEditingController _lastNameController = TextEditingController();

  TextEditingController _companyNameNameController = TextEditingController();

  TextEditingController _phoneNumberController = TextEditingController();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _descriptionController = TextEditingController();

  bool _checkboxValue = true;

  FocusNode _firstNameFocusNode = FocusNode();
  FocusNode _lastNameFocusNode = FocusNode();
  FocusNode _companyNameFocusNode = FocusNode();
  FocusNode _phoneNumberFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _descriptionFocusNode = FocusNode();
<<<<<<< Updated upstream
=======
  bool isHoveredButton = false;
  bool _isClickable = false;


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
>>>>>>> Stashed changes

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
                                  child: SizedBox(
                                    height: 36,
                                    child: TextFormField(
                                      focusNode: _firstNameFocusNode,
                                      controller: _firstNameController,
                                      style: AppTheme
                                          .themeData.textTheme.headlineLarge!
                                          .copyWith(fontSize: 14),
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: AppColors.lightGrey,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                        labelStyle: AppTheme
                                            .themeData.textTheme.labelSmall!
                                            .copyWith(
                                                color: _firstNameFocusNode
                                                        .hasFocus
                                                    ? AppColors.mainDarkAccent
                                                    : AppColors.darkGrey),
                                        labelText: AppLocalizations.of(context)!
                                            .firstname,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  child: SizedBox(
                                    height: 36,
                                    child: TextFormField(
                                      focusNode: _lastNameFocusNode,
                                      controller: _lastNameController,
                                      textAlign: TextAlign.start,
                                      style: AppTheme
                                          .themeData.textTheme.headlineLarge!
                                          .copyWith(fontSize: 14),
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: AppColors.lightGrey,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                        labelStyle: AppTheme
                                            .themeData.textTheme.labelSmall!
                                            .copyWith(
                                                color: _lastNameFocusNode
                                                        .hasFocus
                                                    ? AppColors.mainDarkAccent
                                                    : AppColors.darkGrey),
                                        labelText: AppLocalizations.of(context)!
                                            .lastname,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 36,
                                    child: TextFormField(
                                      textAlign: TextAlign.start,
                                      focusNode: _companyNameFocusNode,
                                      controller: _companyNameNameController,
                                      style: AppTheme
                                          .themeData.textTheme.headlineLarge!
                                          .copyWith(fontSize: 14),
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: AppColors.lightGrey,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                        labelStyle: AppTheme
                                            .themeData.textTheme.labelSmall!
                                            .copyWith(
                                          color: _companyNameFocusNode.hasFocus
                                              ? AppColors.mainDarkAccent
                                              : AppColors.darkGrey,
                                        ),
                                        labelText: AppLocalizations.of(context)!
                                            .companyName,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  child: SizedBox(
                                    width: 244,
                                    height: 36,
                                    child: TextFormField(
                                      textAlign: TextAlign.start,
                                      focusNode: _phoneNumberFocusNode,
                                      controller: _phoneNumberController,
                                      style: AppTheme
                                          .themeData.textTheme.headlineLarge!
                                          .copyWith(fontSize: 14),
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: AppColors.lightGrey,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        labelStyle: AppTheme
                                            .themeData.textTheme.labelSmall!
                                            .copyWith(
                                          color: _phoneNumberFocusNode.hasFocus
                                              ? AppColors.mainDarkAccent
                                              : AppColors.darkGrey,
                                        ),
                                        labelText: AppLocalizations.of(context)!
                                            .phoneNumber,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 26,
                            ),
                            SizedBox(
                              width: 521,
                              height: 36,
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                focusNode: _emailFocusNode,
                                controller: _emailController,
                                style: AppTheme
                                    .themeData.textTheme.headlineLarge!
                                    .copyWith(fontSize: 14),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  prefixIcon: Icon(Icons.email,
                                      color: AppColors.darkGrey),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: AppColors.lightGrey,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelStyle: AppTheme
                                      .themeData.textTheme.labelSmall!
                                      .copyWith(
                                          color: _emailFocusNode.hasFocus
                                              ? AppColors.mainDarkAccent
                                              : AppColors.darkGrey),
                                  labelText:
                                      AppLocalizations.of(context)!.email,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            SizedBox(
                              width: 521,
                              height: 86,
                              child: TextFormField(
                                maxLines: 5,
                                textAlign: TextAlign.start,
                                textAlignVertical: TextAlignVertical.top,
                                focusNode: _descriptionFocusNode,
                                controller: _descriptionController,
                                style: AppTheme
                                    .themeData.textTheme.headlineLarge!
                                    .copyWith(fontSize: 14),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: AppColors.lightGrey,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignLabelWithHint: true,
                                  labelStyle: AppTheme
                                      .themeData.textTheme.labelSmall!
                                      .copyWith(
                                          color: _descriptionFocusNode.hasFocus
                                              ? AppColors.mainDarkAccent
                                              : AppColors.darkGrey),
                                  labelText:
                                      AppLocalizations.of(context)!.description,
                                ),
                              ),
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
                                        onChanged: (_checkboxValue) {
                                          _checkboxValue = !_checkboxValue!;
                                          print(
                                              '_checkboxValue $_checkboxValue');
                                        }),
                                  ),
                                  SizedBox(
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
                            SizedBox(
                              height: 36,
                            ),
                            SizedBox(
                              width: 521,
                              height: 36,
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  onPressed: () {},
                                  color: AppColors.mainAccent,
                                  hoverColor: AppColors.mainDarkAccent,
                                  // style: ElevatedButton.styleFrom(
                                  //     backgroundColor: AppColors.mainAccent,
                                  //     padding: const EdgeInsets.symmetric(
                                  //         horizontal: 50, vertical: 20),
                                  //     shape: const RoundedRectangleBorder(
                                  //         borderRadius: BorderRadius.all(
                                  //             Radius.circular(8)))),
                                  child: Text(
                                      AppLocalizations.of(context)!.send,
                                      style: AppTheme
                                          .themeData.textTheme.labelSmall!
                                          .copyWith(
                                        color: Colors.white,
                                      )),
                                ),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 244,
                                  height: 36,
                                  child: TextFormField(
                                    focusNode: _firstNameFocusNode,
                                    controller: _firstNameController,
                                    style: AppTheme
                                        .themeData.textTheme.headlineLarge!
                                        .copyWith(fontSize: 14),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: AppColors.lightGrey,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                      labelStyle: AppTheme
                                          .themeData.textTheme.labelSmall!
                                          .copyWith(
                                              color:
                                                  _firstNameFocusNode.hasFocus
                                                      ? AppColors.mainDarkAccent
                                                      : AppColors.darkGrey),
                                      labelText: AppLocalizations.of(context)!
                                          .firstname,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 244,
                                  height: 36,
                                  child: TextFormField(
                                    focusNode: _lastNameFocusNode,
                                    controller: _lastNameController,
                                    textAlign: TextAlign.start,
                                    style: AppTheme
                                        .themeData.textTheme.headlineLarge!
                                        .copyWith(fontSize: 14),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: AppColors.lightGrey,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                      labelStyle: AppTheme
                                          .themeData.textTheme.labelSmall!
                                          .copyWith(
                                              color: _lastNameFocusNode.hasFocus
                                                  ? AppColors.mainDarkAccent
                                                  : AppColors.darkGrey),
                                      labelText: AppLocalizations.of(context)!
                                          .lastname,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 244,
                                  height: 36,
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    focusNode: _companyNameFocusNode,
                                    controller: _companyNameNameController,
                                    style: AppTheme
                                        .themeData.textTheme.headlineLarge!
                                        .copyWith(fontSize: 14),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: AppColors.lightGrey,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                      labelStyle: AppTheme
                                          .themeData.textTheme.labelSmall!
                                          .copyWith(
                                        color: _companyNameFocusNode.hasFocus
                                            ? AppColors.mainDarkAccent
                                            : AppColors.darkGrey,
                                      ),
                                      labelText: AppLocalizations.of(context)!
                                          .companyName,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 244,
                                  height: 36,
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    focusNode: _phoneNumberFocusNode,
                                    controller: _phoneNumberController,
                                    style: AppTheme
                                        .themeData.textTheme.headlineLarge!
                                        .copyWith(fontSize: 14),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: AppColors.lightGrey,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelStyle: AppTheme
                                          .themeData.textTheme.labelSmall!
                                          .copyWith(
                                        color: _phoneNumberFocusNode.hasFocus
                                            ? AppColors.mainDarkAccent
                                            : AppColors.darkGrey,
                                      ),
                                      labelText: AppLocalizations.of(context)!
                                          .phoneNumber,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 26,
                            ),
                            SizedBox(
                              width: 521,
                              height: 36,
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                focusNode: _emailFocusNode,
                                controller: _emailController,
                                style: AppTheme
                                    .themeData.textTheme.headlineLarge!
                                    .copyWith(fontSize: 14),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  prefixIcon: Icon(Icons.email,
                                      color: AppColors.darkGrey),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: AppColors.lightGrey,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelStyle: AppTheme
                                      .themeData.textTheme.labelSmall!
                                      .copyWith(
                                          color: _emailFocusNode.hasFocus
                                              ? AppColors.mainDarkAccent
                                              : AppColors.darkGrey),
                                  labelText:
                                      AppLocalizations.of(context)!.email,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            SizedBox(
                              width: 521,
                              height: 86,
                              child: TextFormField(
                                maxLines: 5,
                                textAlign: TextAlign.start,
                                textAlignVertical: TextAlignVertical.top,
                                focusNode: _descriptionFocusNode,
                                controller: _descriptionController,
                                style: AppTheme
                                    .themeData.textTheme.headlineLarge!
                                    .copyWith(fontSize: 14),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: AppColors.lightGrey,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignLabelWithHint: true,
                                  labelStyle: AppTheme
                                      .themeData.textTheme.labelSmall!
                                      .copyWith(
                                          color: _descriptionFocusNode.hasFocus
                                              ? AppColors.mainDarkAccent
                                              : AppColors.darkGrey),
                                  labelText:
                                      AppLocalizations.of(context)!.description,
                                ),
                              ),
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
                                        onChanged: (_checkboxValue) {
                                          _checkboxValue = !_checkboxValue!;
                                          print(
                                              '_checkboxValue $_checkboxValue');
                                        }),
                                  ),
                                  SizedBox(
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
                            SizedBox(
                              height: 36,
                            ),
                            SizedBox(
                              width: 521,
                              height: 36,
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  onPressed: () {},
                                  color: AppColors.mainAccent,
                                  hoverColor: AppColors.mainDarkAccent,
                                  // style: ElevatedButton.styleFrom(
                                  //     backgroundColor: AppColors.mainAccent,
                                  //     padding: const EdgeInsets.symmetric(
                                  //         horizontal: 50, vertical: 20),
                                  //     shape: const RoundedRectangleBorder(
                                  //         borderRadius: BorderRadius.all(
                                  //             Radius.circular(8)))),
                                  child: Text(
                                      AppLocalizations.of(context)!.send,
                                      style: AppTheme
                                          .themeData.textTheme.labelSmall!
                                          .copyWith(
                                        color: Colors.white,
                                      )),
                                ),
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
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              AppLocalizations.of(context)!
                                  .youAreOneStepCloseToFind,
                              style:
                                  AppTheme.themeData.textTheme.titleMedium,
                              overflow: TextOverflow.visible,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Steps()
                          ]),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 244,
                                height: 36,
                                child: TextFormField(
                                  focusNode: _firstNameFocusNode,
                                  controller: _firstNameController,
                                  style: AppTheme
                                      .themeData.textTheme.headlineLarge!
                                      .copyWith(fontSize: 14),
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: AppColors.lightGrey,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    labelStyle: AppTheme
                                        .themeData.textTheme.labelSmall!
                                        .copyWith(
                                            color: _firstNameFocusNode.hasFocus
                                                ? AppColors.mainDarkAccent
                                                : AppColors.darkGrey),
                                    labelText:
                                        AppLocalizations.of(context)!.firstname,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              SizedBox(
                                width: 244,
                                height: 36,
                                child: TextFormField(
                                  focusNode: _lastNameFocusNode,
                                  controller: _lastNameController,
                                  textAlign: TextAlign.start,
                                  style: AppTheme
                                      .themeData.textTheme.headlineLarge!
                                      .copyWith(fontSize: 14),
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: AppColors.lightGrey,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    labelStyle: AppTheme
                                        .themeData.textTheme.labelSmall!
                                        .copyWith(
                                            color: _lastNameFocusNode.hasFocus
                                                ? AppColors.mainDarkAccent
                                                : AppColors.darkGrey),
                                    labelText:
                                        AppLocalizations.of(context)!.lastname,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 244,
                                height: 36,
                                child: TextFormField(
                                  textAlign: TextAlign.start,
                                  focusNode: _companyNameFocusNode,
                                  controller: _companyNameNameController,
                                  style: AppTheme
                                      .themeData.textTheme.headlineLarge!
                                      .copyWith(fontSize: 14),
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: AppColors.lightGrey,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    labelStyle: AppTheme
                                        .themeData.textTheme.labelSmall!
                                        .copyWith(
                                      color: _companyNameFocusNode.hasFocus
                                          ? AppColors.mainDarkAccent
                                          : AppColors.darkGrey,
                                    ),
                                    labelText: AppLocalizations.of(context)!
                                        .companyName,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              SizedBox(
                                width: 244,
                                height: 36,
                                child: TextFormField(
                                  textAlign: TextAlign.start,
                                  focusNode: _phoneNumberFocusNode,
                                  controller: _phoneNumberController,
                                  style: AppTheme
                                      .themeData.textTheme.headlineLarge!
                                      .copyWith(fontSize: 14),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: AppColors.lightGrey,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    labelStyle: AppTheme
                                        .themeData.textTheme.labelSmall!
                                        .copyWith(
                                      color: _phoneNumberFocusNode.hasFocus
                                          ? AppColors.mainDarkAccent
                                          : AppColors.darkGrey,
                                    ),
                                    labelText: AppLocalizations.of(context)!
                                        .phoneNumber,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 26,
                          ),
                          SizedBox(
                            width: 521,
                            height: 36,
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              focusNode: _emailFocusNode,
                              controller: _emailController,
                              style: AppTheme.themeData.textTheme.headlineLarge!
                                  .copyWith(fontSize: 14),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                prefixIcon: Icon(Icons.email,
                                    color: AppColors.darkGrey),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: AppColors.lightGrey,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                labelStyle: AppTheme
                                    .themeData.textTheme.labelSmall!
                                    .copyWith(
                                        color: _emailFocusNode.hasFocus
                                            ? AppColors.mainDarkAccent
                                            : AppColors.darkGrey),
                                labelText: AppLocalizations.of(context)!.email,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          SizedBox(
                            width: 521,
                            height: 86,
                            child: TextFormField(
                              maxLines: 5,
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.top,
                              focusNode: _descriptionFocusNode,
                              controller: _descriptionController,
                              style: AppTheme.themeData.textTheme.headlineLarge!
                                  .copyWith(fontSize: 14),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: AppColors.lightGrey,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignLabelWithHint: true,
                                labelStyle: AppTheme
                                    .themeData.textTheme.labelSmall!
                                    .copyWith(
                                        color: _descriptionFocusNode.hasFocus
                                            ? AppColors.mainDarkAccent
                                            : AppColors.darkGrey),
                                labelText:
                                    AppLocalizations.of(context)!.description,
                              ),
                            ),
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
                                      onChanged: (_checkboxValue) {
                                        _checkboxValue = !_checkboxValue!;
                                        print('_checkboxValue $_checkboxValue');
                                      }),
                                ),
                                SizedBox(
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
                          SizedBox(
                            height: 36,
                          ),
                          SizedBox(
                            width: 521,
                            height: 36,
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                onPressed: () {},
                                color: AppColors.mainAccent,
                                hoverColor: AppColors.mainDarkAccent,
                                // style: ElevatedButton.styleFrom(
                                //     backgroundColor: AppColors.mainAccent,
                                //     padding: const EdgeInsets.symmetric(
                                //         horizontal: 50, vertical: 20),
                                //     shape: const RoundedRectangleBorder(
                                //         borderRadius: BorderRadius.all(
                                //             Radius.circular(8)))),
                                child: Text(AppLocalizations.of(context)!.send,
                                    style: AppTheme
                                        .themeData.textTheme.labelSmall!
                                        .copyWith(
                                      color: Colors.white,
                                    )),
                              ),
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
    ;
  }
}

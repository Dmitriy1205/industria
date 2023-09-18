import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:industria/presentation/widgets/steps.dart';

import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../widgets/footer.dart';

class Contact extends StatelessWidget {
  Contact({super.key});

  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _companyNameNameController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  bool _checkboxValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
                    padding: const EdgeInsets.only(
                        left: 65.0, right: 65, top: 75, bottom: 71),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      AppTheme.themeData.textTheme.titleMedium),
                              SizedBox(
                                height: 30,
                              ),
                              Steps()
                            ]),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 244,
                                  height: 36,
                                  child: TextFormField(
                                    controller: _firstNameController,
                                    style: AppTheme
                                        .themeData.textTheme.headlineLarge!
                                        .copyWith(fontSize: 15),
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
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(
                                              fontSize: 14,
                                              color: AppColors.darkGrey,
                                              fontWeight: FontWeight.w600),
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
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(
                                              fontSize: 14,
                                              color: AppColors.darkGrey,
                                              fontWeight: FontWeight.w600),
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
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(
                                              fontSize: 14,
                                              color: AppColors.darkGrey,
                                              fontWeight: FontWeight.w600),
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
                                    controller: _phoneNumberController,
                                    style: AppTheme
                                        .themeData.textTheme.headlineLarge!
                                        .copyWith(fontSize: 15),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: AppColors.lightGrey,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelStyle: AppTheme
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(
                                              fontSize: 14,
                                              color: AppColors.darkGrey,
                                              fontWeight: FontWeight.w600),
                                      labelText: AppLocalizations.of(context)!
                                          .phoneNumber,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 521,
                              height: 36,
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                controller: _emailController,
                                style: AppTheme
                                    .themeData.textTheme.headlineLarge!
                                    .copyWith(fontSize: 15),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: AppColors.lightGrey,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelStyle: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(
                                          fontSize: 14,
                                          color: AppColors.darkGrey,
                                          fontWeight: FontWeight.w600),
                                  labelText:
                                      AppLocalizations.of(context)!.email,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 521,
                              height: 86,
                              child: TextFormField(
                                maxLines: 5,
                                textAlign: TextAlign.start,
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
                                  labelStyle: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(
                                          fontSize: 14,
                                          color: AppColors.darkGrey,
                                          fontWeight: FontWeight.w600),
                                  labelText:
                                      AppLocalizations.of(context)!.description,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                    activeColor: AppColors.mainAccent,
                                    value: _checkboxValue,
                                    onChanged: (_checkboxValue) {
                                      _checkboxValue = !_checkboxValue!;
                                    }),
                                SizedBox(
                                  width: 15,
                                ),
                                RichText(
                                    text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: AppLocalizations.of(context)!
                                          .iAcceptApplicationDataProtectionPolicy,
                                      style: AppTheme
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(
                                              fontSize: 14,
                                              color: AppColors.darkGrey,
                                              fontWeight: FontWeight.w600),
                                    ),
                                    TextSpan(
                                        text: AppLocalizations.of(context)!
                                            .dataProtection,
                                        style: AppTheme
                                            .themeData.textTheme.labelMedium!
                                            .copyWith(
                                                fontSize: 14,
                                                color: AppColors.mainAccent,
                                                fontWeight: FontWeight.w600),
                                        mouseCursor: SystemMouseCursors.click),
                                    TextSpan(
                                      text:
                                          AppLocalizations.of(context)!.policy,
                                      style: AppTheme
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(
                                              fontSize: 14,
                                              color: AppColors.darkGrey,
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: 530,
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: MaterialButton(
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
                                          .themeData.textTheme.bodyMedium!
                                          .copyWith(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600)),
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
      ),
    );
  }
}

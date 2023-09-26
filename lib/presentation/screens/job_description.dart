import 'dart:typed_data';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/core/extensions/time.dart';
import 'package:industria/domain/entities/job_offer/job_offer.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';
import 'package:industria/presentation/widgets/bold_text_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:industria/presentation/widgets/dropdown_text_form_field.dart';
import 'package:industria/presentation/widgets/file_upload_widget.dart';
import 'package:industria/presentation/widgets/firebase_image.dart';

import '../../app/router.dart';
import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../../core/validator/field_validator.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/footer.dart';

class JobDescription extends StatefulWidget {
  final JobOffer job;

  const JobDescription({super.key, required this.job});

  @override
  State<JobDescription> createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {
  bool isPassObscure = true;
  bool isHoveredButton = false;
  bool isHoveredEmail = false;
  bool isHoveredPass = false;

  final TextEditingController _firstnameController = TextEditingController();
  final FocusNode _firstnameFocus = FocusNode();

  final TextEditingController _lastnameController = TextEditingController();
  final FocusNode _lastnameFocus = FocusNode();

  final TextEditingController _dateOfBirthController = TextEditingController();
  final FocusNode _dateOfBirthFocus = FocusNode();

  final TextEditingController _citizenshipController = TextEditingController();
  final FocusNode _citizenshipFocus = FocusNode();

  final TextEditingController _genderController = TextEditingController();

  final TextEditingController _addressController = TextEditingController();
  final FocusNode _addressFocus = FocusNode();

  final TextEditingController _availableDateController =
      TextEditingController();
  final FocusNode _availableDateFocus = FocusNode();

  Uint8List? photoBytes;
  Uint8List? cvBytes;
  List<Uint8List> certificateBytes = [];

  bool acceptPolicy = false;

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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: LayoutBuilder(
        builder: (context,constraints) => Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 70.0,
                      left: constraints.maxWidth < 1000 ? 20 : 260,
                      right: constraints.maxWidth < 1000 ? 20 : 260),
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
                              Icon(
                                Icons.arrow_back_ios_new,
                                color: AppColors.mainAccent,
                                size: 14,
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              Text(
                                'Back to jobs',
                                style: AppTheme.themeData.textTheme.titleMedium!
                                    .copyWith(color: AppColors.mainAccent),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.job.title,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge
                                    ?.copyWith(
                                    fontWeight: FontWeight.w600, fontSize: 32),
                              ),
                              Text(
                                widget.job.jobType,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge
                                    ?.copyWith(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                            ],
                          ),
                          Spacer(),
                          FirebaseImage(widget.job.company.logo)
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _iconTextTile(FontAwesomeIcons.solidBuilding,
                          widget.job.companyName),
                      SizedBox(
                        height: 12,
                      ),
                      _iconTextTile(
                          FontAwesomeIcons.locationArrow, widget.job.location),
                      SizedBox(
                        height: 12,
                      ),
                      _iconTextTile(
                          FontAwesomeIcons.moneyBill, widget.job.salary),
                      SizedBox(
                        height: 12,
                      ),
                      _iconTextTile(FontAwesomeIcons.calendarWeek,
                          getTimeAgo(widget.job.createdAt)),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Job description",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(fontSize: 24),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      BoldTextWidget(
                        text: widget.job.description,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextFormField(
                              focusNode: _firstnameFocus,
                              textController: _firstnameController,
                              labelText:
                              AppLocalizations.of(context)!.firstname,
                              validator: Validator.validate,
                              textInputType: TextInputType.text,
                              isSavePressed: true,
                              onChange: (_) {},
                              maxLines: 1,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: CustomTextFormField(
                              focusNode: _lastnameFocus,
                              textController: _lastnameController,
                              labelText: AppLocalizations.of(context)!.lastname,
                              validator: Validator.validate,
                              textInputType: TextInputType.text,
                              isSavePressed: true,
                              onChange: (_) {},
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      LayoutBuilder(
                        builder: (context,constraints) {
                          print(constraints.maxWidth);
                          return Row(
                          children: [
                            CustomTextFormField(
                              width: constraints.maxWidth / 4,
                              focusNode: _dateOfBirthFocus,
                              textController: _dateOfBirthController,
                              type: CustomTextFormFieldType.date,
                              labelText:
                              AppLocalizations.of(context)!.dateOfBirth,
                              validator: Validator.validate,
                              textInputType: TextInputType.text,
                              isSavePressed: true,
                              onChange: (v) {
                                setState(() {
                                  _dateOfBirthController.text =
                                      (v as DateTime).formatted;
                                });
                              },
                              maxLines: 1,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            DropdownTextFormField(
                              controller: _citizenshipController,
                              variants: ["Ukrainian", "Russian"],
                              hintText: AppLocalizations.of(context)!.citizenship,
                              width: constraints.maxWidth / 2 - 16,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            DropdownTextFormField(
                              controller: _genderController,
                              variants: ["Male", "Female"],
                              hintText: AppLocalizations.of(context)!.gender,
                              width: constraints.maxWidth / 4 - 16,
                            ),
                          ],
                        );
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CustomTextFormField(
                        focusNode: _addressFocus,
                        textController: _addressController,
                        labelText: AppLocalizations.of(context)!.address,
                        validator: Validator.validate,
                        textInputType: TextInputType.text,
                        isSavePressed: true,
                        onChange: (_) {},
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CustomTextFormField(
                        focusNode: _availableDateFocus,
                        textController: _availableDateController,
                        type: CustomTextFormFieldType.date,
                        labelText:
                        AppLocalizations.of(context)!.availabilityDate,
                        validator: Validator.validate,
                        textInputType: TextInputType.text,
                        isSavePressed: true,
                        onChange: (v) {
                          setState(() {
                            _availableDateController.text =
                                (v as DateTime).formatted;
                          });
                        },
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Wrap(
                        runSpacing: 5,
                        spacing: 40,
                        children: [
                        SizedBox(
                          height: 200,
                          child: FileUploadWidget(
                              singlePick: true,
                              icon: FontAwesomeIcons.solidUser, hint: "Drag your picture here *", pickedFilesNames: [], onPick: (file){
                            setState(() {
                              photoBytes = file.first;
                            });
                          }),
                        ),
                        SizedBox(
                          height: 200,
                          child: FileUploadWidget(
                              singlePick: true,
                              icon: FontAwesomeIcons.solidFile, hint: "Drag your CV here *", pickedFilesNames: [], onPick: (file){
                            setState(() {
                              cvBytes = file.first;
                            });
                          }),
                        ),
                        SizedBox(
                          height: 200,
                          child: FileUploadWidget(icon: FontAwesomeIcons.solidFile, hint: "Drag your certificates here", pickedFilesNames: [], onPick: (files){
                            setState(() {
                              certificateBytes = files;
                            });
                          }),
                        ),
                      ].map((e) => ConstrainedBox(constraints: BoxConstraints(
                          minWidth: 240,
                          maxWidth: 260
                        ), child: e,)).toList(),),
                      SizedBox(height: 15,),
                      Text("*  - mandatory fields", style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 12),),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Checkbox(value: acceptPolicy, onChanged: (val){
                            setState(() {
                              acceptPolicy = val!;
                            });
                          }),
                          SizedBox(width: 19,),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'I accept application ',
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                                TextSpan(
                                  text: 'Data Protection',
                                  style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.mainDarkAccent),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {

                                    },
                                ),
                                TextSpan(
                                  text: ' policy',
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      AppElevatedButton(
                          verticalPadding: 10,
                          textStyle: Theme.of(context)!.textTheme.labelSmall?.copyWith(color: Colors.white),
                          text: AppLocalizations.of(context)!.send, onPressed: (){}),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
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
        SizedBox(
          width: 14,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/core/utils/time.dart';
import 'package:industria/core/utils/toast.dart';
import 'package:industria/core/validator/field_validator.dart';
import 'package:industria/data/remote/admin_employee/admin_employee_service_impl.dart';
import 'package:industria/domain/entities/employee/employee.dart';
import 'package:industria/domain/repositories/admin_employee/admin_employee_repository_impl.dart';
import 'package:industria/presentation/bloc/employee_feature/admin_employee_list/admin_employee_list_bloc.dart';
import 'package:industria/presentation/bloc/employee_feature/admin_update_employee/admin_update_employee_bloc.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';
import 'package:industria/presentation/widgets/custom_text_form_field.dart';
import 'package:industria/presentation/widgets/firebase_image.dart';

class CreateCompany extends StatefulWidget {
  const CreateCompany({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateCompany> createState() => _CreateCompanyState();
}

class _CreateCompanyState extends State<CreateCompany> {
  final _nameNode = FocusNode();
  late final _nameController = TextEditingController();
  List<int>? _photoBytes;
  String? _photoFileName;

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
                  "Vacancies",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  " / Create company",
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                  backgroundColor: AppColors.lightGrey,
                                  backgroundImage: _photoBytes == null
                                      ? null
                                      : Image.memory(
                                              Uint8List.fromList(_photoBytes!))
                                          .image),
                              const SizedBox(
                                width: 15,
                              ),
                              TextButton(
                                  onPressed: () async {
                                    final pickedFiles =
                                        await FilePicker.platform.pickFiles(
                                            allowMultiple: false,
                                            type: FileType.custom,
                                            allowedExtensions: [
                                          "png",
                                          "jpg",
                                          "jpeg"
                                        ]);
                                    if (pickedFiles == null) return;
                                    setState(() {
                                      _photoFileName =
                                          pickedFiles.files.first.name;
                                      _photoBytes =
                                          pickedFiles.files.first.bytes;
                                    });
                                  },
                                  child: const Text(
                                    'Change photo',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: AppColors.mainAccent,
                                        decorationColor: AppColors.mainAccent,
                                        fontSize: 12),
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 21,
                          ),
                        ],
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          focusNode: _nameNode,
                          textController: _nameController,
                          labelText: 'Company name*',
                          textInputType: TextInputType.text,
                          validator: (v) {},
                          isSavePressed: true,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      AppElevatedButton(
                        text: "Create",
                        onPressed: () {
                          // _adminCreateEmployeeBloc.add(
                          //     AdminCreateEmployeeEvent.createEmployee(
                          //         email: email,
                          //         password: password,
                          //         firstname: firstname,
                          //         lastname: lastname,
                          //         phoneNumber: phoneNumber,
                          //         role: role,
                          //         dateOfBirth: _dateOfBirth!,
                          //         worksSince: _worksSince!,
                          //         imgFilename: _photoFileName!,
                          //         imgBytes: _photoBytes!));
                        },
                        verticalPadding: 10,
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            )
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
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.darkGrey),
        ),
        SizedBox(
          height: 14,
        ),
        Text(
          subtitle,
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
      ],
    );
  }
  @override
  void dispose() {
    _nameController.dispose();
    _nameNode.dispose();
    super.dispose();
    super.dispose();
  }
}

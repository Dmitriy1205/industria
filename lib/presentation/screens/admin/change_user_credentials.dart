import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/core/utils/toast.dart';
import 'package:industria/core/validator/field_validator.dart';
import 'package:industria/data/remote/admin_employee/admin_employee_service_impl.dart';
import 'package:industria/domain/entities/employee/employee.dart';
import 'package:industria/domain/repositories/admin_employee/admin_employee_repository_contract.dart';
import 'package:industria/domain/repositories/admin_employee/admin_employee_repository_impl.dart';
import 'package:industria/presentation/bloc/employee_feature/admin_employee_list/admin_employee_list_bloc.dart';
import 'package:industria/presentation/bloc/employee_feature/admin_update_employee/admin_update_employee_bloc.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';
import 'package:industria/presentation/widgets/custom_text_form_field.dart';
import 'package:industria/presentation/widgets/firebase_image.dart';

import '../../../core/services/service_locator.dart';

class ChangeUserCredentials extends StatefulWidget {
  final Employee employee;

  const ChangeUserCredentials({Key? key, required this.employee})
      : super(key: key);

  @override
  State<ChangeUserCredentials> createState() => _ChangeUserCredentialsState();
}

class _ChangeUserCredentialsState extends State<ChangeUserCredentials> {
  final _firstnameNode = FocusNode();

  final _lastnameNode = FocusNode();

  final _phoneNode = FocusNode();

  final _roleNode = FocusNode();

  final _dateOfBirthNode = FocusNode();

  final _worksSinceNode = FocusNode();

  final _passwordNode = FocusNode();

  late final _firstnameController =
      TextEditingController(text: widget.employee.firstname);

  late final _lastnameController =
      TextEditingController(text: widget.employee.lastname);

  late final _phoneController =
      TextEditingController(text: widget.employee.phoneNumber);

  late final _roleController =
      TextEditingController(text: widget.employee.role);

  late final _dateOfBirtController =
      TextEditingController(text: widget.employee.dateOfBirth.formatted);

  late final _worksSinceController =
      TextEditingController(text: widget.employee.worksSince.formatted);

  late final _passwordController = TextEditingController();

  late DateTime _dateOfBirth = widget.employee.dateOfBirth;
  late DateTime _worksSince = widget.employee.worksSince;

  bool _changePassword = false;

  final _formKey = GlobalKey<FormState>();

  String? _photoFileName;
  List<int>? _photoBytes;

  final _adminUpdateEmployeeBloc = AdminUpdateEmployeeBloc(
      adminEmployeeRepository: sl<AdminEmployeeRepository>());

  @override
  Widget build(BuildContext context) {
    return BlocListener<AdminUpdateEmployeeBloc, AdminUpdateEmployeeState>(
      bloc: _adminUpdateEmployeeBloc,
      listener: (context, state) {
        state.map(
            initial: (_) {},
            loading: (_) {
              showProgressSnackBar(context);
            },
            success: (_) {
              showSuccessSnackBar(context, "Updated user successfully!");
              context.read<AdminEmployeeListBloc>().add(AdminEmployeeListEvent.fetchData(elementsPerPage: 5, page: 0));
            },
            fail: (_) {
              showErrorSnackBar(context, "Failed to update user!");
            });
      },
      child: Form(
        key: _formKey,
        child: Center(
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
                      "Employee",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " / Change credentials",
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  _photoBytes != null ? CircleAvatar(
                                      backgroundImage: Image.memory(Uint8List.fromList(_photoBytes!)).image
                                  ) : FirebaseImage(
                                    storageRef: widget.employee.photoRef,
                                    rounded: true,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  TextButton(
                                      onPressed: () async{
                                        final pickedFiles = await FilePicker.platform.pickFiles(allowMultiple: false, type: FileType.custom, allowedExtensions: ["png","jpg","jpeg"]);
                                        if(pickedFiles == null) return;
                                        setState(() {
                                          _photoFileName = pickedFiles.files.first.name;
                                          _photoBytes = pickedFiles.files.first.bytes;
                                        });
                                      },
                                      child: const Text(
                                        'Change photo',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: AppColors.mainAccent,
                                            decorationColor:
                                                AppColors.mainAccent,
                                            fontSize: 12),
                                      )),
                                  const Spacer(),
                                  Text(
                                    widget.employee.email,
                                    style: const TextStyle(
                                        color: AppColors.darkGrey,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 21,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: AppColors.lightGrey,
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 36),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: CustomTextFormField(
                                    focusNode: _firstnameNode,
                                    textController: _firstnameController,
                                    labelText: 'Firstname*',
                                    textInputType: TextInputType.name,
                                    validator: Validator.validate,
                                    isSavePressed: true,
                                  )),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Expanded(
                                      child: CustomTextFormField(
                                    focusNode: _lastnameNode,
                                    textController: _lastnameController,
                                    labelText: 'Lastname*',
                                    textInputType: TextInputType.name,
                                    validator: Validator.validate,
                                    isSavePressed: true,
                                  )),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: CustomTextFormField(
                                    focusNode: _phoneNode,
                                    textController: _phoneController,
                                    labelText: 'Phone number*',
                                    textInputType: TextInputType.name,
                                    validator: Validator.validatePhone,
                                    isSavePressed: true,
                                  )),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Expanded(
                                      child: CustomTextFormField(
                                    focusNode: _roleNode,
                                    textController: _roleController,
                                    labelText: 'Role*',
                                    textInputType: TextInputType.name,
                                    validator: Validator.validate,
                                    isSavePressed: true,
                                  )),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: CustomTextFormField(
                                    focusNode: _dateOfBirthNode,
                                    type: CustomTextFormFieldType.date,
                                    textController: _dateOfBirtController,
                                    labelText: 'Date of birth*',
                                    textInputType: TextInputType.name,
                                    validator: Validator.validate,
                                    isSavePressed: true,
                                    onChange: (val) {
                                      setState(() {
                                        _dateOfBirtController.text =
                                            (val as DateTime).formatted;
                                        _dateOfBirth = val;
                                      });
                                    },
                                  )),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Expanded(
                                      child: CustomTextFormField(
                                    focusNode: _worksSinceNode,
                                    textController: _worksSinceController,
                                    labelText: 'Works since*',
                                    type: CustomTextFormFieldType.date,
                                    textInputType: TextInputType.name,
                                    validator: Validator.validate,
                                    isSavePressed: true,
                                    onChange: (val) {
                                      setState(() {
                                        _worksSinceController.text =
                                            (val as DateTime).formatted;
                                        _worksSince = val;
                                      });
                                    },
                                  )),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: _changePassword,
                                      onChanged: (val) {
                                        setState(() {
                                          _changePassword = val!;
                                        });
                                      }),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  const Text(
                                    "Change credentials",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.darkGrey),
                                  )
                                ],
                              ),
                              !_changePassword
                                  ? const SizedBox.shrink()
                                  : const SizedBox(
                                      height: 15,
                                    ),
                              !_changePassword
                                  ? const SizedBox.shrink()
                                  : CustomTextFormField(
                                      focusNode: _passwordNode,
                                      textController: _passwordController,
                                      labelText: 'Password',
                                      textInputType: TextInputType.name,
                                      validator: Validator.validate,
                                      isSavePressed: true,
                                    ),
                              const SizedBox(
                                height: 30,
                              ),
                              AppElevatedButton(
                                text: "Save",
                                onPressed: () {
                                  final userUid = widget.employee.id!;
                                  final email = widget.employee.email;
                                  final password = _changePassword ? _passwordController.text : null;
                                  final firstname = _firstnameController.text;
                                  final lastname = _lastnameController.text;
                                  final phoneNumber = _phoneController.text;
                                  final role = _roleController.text;
                                  _adminUpdateEmployeeBloc.add(AdminUpdateEmployeeEvent.updateEmployee(userUid: userUid, email: email, password: password, firstname: firstname, lastname: lastname, phoneNumber: phoneNumber, role: role, dateOfBirth: _dateOfBirth!, worksSince: _worksSince!, imgFilename: _photoFileName, imgBytes: _photoBytes));
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
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _firstnameNode.dispose();
    _lastnameNode.dispose();
    _phoneNode.dispose();
    _roleNode.dispose();
    _dateOfBirthNode.dispose();
    _worksSinceNode.dispose();
    _passwordNode.dispose();
    _firstnameController.dispose();
    _lastnameController.dispose();
    _phoneController.dispose();
    _roleController.dispose();
    _dateOfBirtController.dispose();
    _worksSinceController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

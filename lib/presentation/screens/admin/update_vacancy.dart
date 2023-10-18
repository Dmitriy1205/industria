import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/enums/company.dart';
import 'package:industria/core/enums/currency.dart';
import 'package:industria/core/enums/job_types.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/core/utils/toast.dart';
import 'package:industria/core/validator/field_validator.dart';
import 'package:industria/data/remote/admin_employee/admin_employee_service_impl.dart';
import 'package:industria/domain/entities/employee/employee.dart';
import 'package:industria/domain/repositories/admin_employee/admin_employee_repository_impl.dart';
import 'package:industria/presentation/bloc/employee_feature/admin_employee_list/admin_employee_list_bloc.dart';
import 'package:industria/presentation/bloc/employee_feature/admin_update_employee/admin_update_employee_bloc.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';
import 'package:industria/presentation/widgets/custom_text_form_field.dart';
import 'package:industria/presentation/widgets/firebase_image.dart';

import '../../../core/enums/job_areas.dart';
import '../../../core/enums/period.dart';
import '../../../core/services/service_locator.dart';
import '../../../core/themes/theme.dart';
import '../../../domain/repositories/admin_employee/admin_employee_repository_contract.dart';
import '../../bloc/employee_feature/admin_create_employee/admin_create_employee_bloc.dart';
import '../../widgets/custom_dropdown_field.dart';

class EditVacancy extends StatefulWidget {
  const EditVacancy({Key? key}) : super(key: key);

  @override
  State<EditVacancy> createState() => _EditVacancyState();
}

class _EditVacancyState extends State<EditVacancy> {
  JobTypes? dropdownJobType ;
  Period? dropdownPeriod;
  Currency? dropdownCurrency;
  CompanyEnum? dropdownCompany;
  List<TextEditingController> _questionControllers = [];
  List<FocusNode> _questionNodes = [];
  int _counter = 0;
  final _titleNode = FocusNode();

  final _salaryNode = FocusNode();

  final _locationNode = FocusNode();

  final _descriptionNode = FocusNode();

  late final _titleController = TextEditingController();
  late final _salaryController = TextEditingController();

  late final _locationController = TextEditingController();

  late final _descriptionController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final _adminCreateEmployeeBloc = AdminCreateEmployeeBloc(
      adminEmployeeRepository: sl<AdminEmployeeRepository>());

  void _addTextField() {
    setState(() {
      _questionControllers.add(TextEditingController());
      _questionNodes.add(FocusNode());
      _counter++;
    });
  }

  void _removeTextField(int index) {
    setState(() {
      _questionControllers.removeAt(index);
      _questionNodes.removeAt(index);
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AdminCreateEmployeeBloc, AdminCreateEmployeeState>(
      bloc: _adminCreateEmployeeBloc,
      listener: (context, state) {
        state.map(
            initial: (_) {},
            loading: (_) {
              showProgressSnackBar(context);
            },
            success: (_) {
              showSuccessSnackBar(context, "Created vacancy successfully!");
              context.read<AdminEmployeeListBloc>().add(
                  AdminEmployeeListEvent.fetchData(
                      page: 0, elementsPerPage: 5));
              context.pop();
            },
            fail: (_) {
              showErrorSnackBar(context, "Failed to update vacancy!");
            });
      },
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 14.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "Vacancy",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " / Edit vacancy",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                const SizedBox(
                  height: 37,
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
                          padding: const EdgeInsets.symmetric(horizontal: 36),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 15.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: CustomTextFormField(
                                        focusNode: _titleNode,
                                        textController: _titleController,
                                        labelText: 'Title*',
                                        textInputType: TextInputType.name,
                                        validator: (v){},
                                        isSavePressed: true,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: CustomDropdownField<JobTypes>(
                                        items: JobTypes.values.toList(),
                                        selectedItem: dropdownJobType,
                                        onChanged: (value) {
                                          setState(() {
                                            dropdownJobType = value!;
                                          });
                                        },
                                        displayFunction: (job) {
                                          return job.value;
                                        },
                                        hint: 'Type*',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextFormField(
                                      focusNode: _salaryNode,
                                      textController: _salaryController,
                                      labelText: 'Salary*',
                                      textInputType: TextInputType.number,
                                      validator: (v) {},
                                      isSavePressed: true,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 37,
                                  ),
                                  Expanded(
                                    child: CustomDropdownField<Currency>(
                                      items: Currency.values.toList(),
                                      selectedItem: dropdownCurrency,
                                      onChanged: (value) {
                                        setState(() {
                                          dropdownCurrency = value!;
                                        });
                                      },
                                      displayFunction: (cur) {
                                        return cur.text;
                                      },
                                      hint: 'Currency*',
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 19,
                                  ),
                                  Expanded(
                                    child: CustomDropdownField<Period>(
                                      items: Period.values.toList(),
                                      selectedItem: dropdownPeriod,
                                      onChanged: (value) {
                                        setState(() {
                                          dropdownPeriod = value!;
                                        });
                                      },
                                      displayFunction: (job) {
                                        return job.text;
                                      },
                                      hint: 'Period*',
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 15.0),
                                child: Expanded(
                                  child: CustomDropdownField<CompanyEnum>(
                                    items: CompanyEnum.values.toList(),
                                    selectedItem: dropdownCompany,
                                    onChanged: (value) {
                                      setState(() {
                                        dropdownCompany = value!;
                                      });
                                    },
                                    displayFunction: (job) {
                                      return job.text;
                                    },
                                    hint: 'Company name*',
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: TextButton(
                                  onPressed: () {
                                    //TODO: create company
                                  },
                                  child: const Text(
                                    'Create company',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.mainAccent,
                                        decoration: TextDecoration.underline,
                                        decorationColor: AppColors.mainAccent),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 15.0),
                                child: Expanded(
                                  child: CustomTextFormField(
                                    focusNode: _locationNode,
                                    textController: _locationController,
                                    labelText: 'Location*',
                                    textInputType: TextInputType.name,
                                    validator: (v) {},
                                    isSavePressed: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 15.0),
                                child: Expanded(
                                  child: CustomTextFormField(
                                    height: 166,
                                    maxLines: 15,
                                    focusNode: _descriptionNode,
                                    textController: _descriptionController,
                                    labelText: 'Description*',
                                    textInputType: TextInputType.multiline,
                                    validator: (v) {},
                                    isSavePressed: true,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  width: 150,
                                  height: 42,
                                  child: AppElevatedButton(
                                    text: 'Questions',
                                    verticalPadding: 0,
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.darkGrey),
                                    prefixIcon: const Icon(
                                      FontAwesomeIcons.plus,
                                      color: AppColors.darkGrey,
                                      size: 12,
                                    ),
                                    color: Colors.white,
                                    borderColor: AppColors.lightGrey,
                                    onPressed: () {
                                      _addTextField();
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 300,
                                child: Expanded(
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: _counter,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 30.0),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: CustomTextFormField(
                                                  focusNode: _questionNodes[index],
                                                  textController:
                                                  _questionControllers[
                                                  index],
                                                  labelText: 'Question*',
                                                  textInputType: TextInputType
                                                      .text,
                                                  validator:(v){},
                                                  isSavePressed: true,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              SizedBox(
                                                width: 63,
                                                height: 38,
                                                child: AppElevatedButton(
                                                  text: '-',
                                                  verticalPadding: 0,
                                                  textStyle: const TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                      color:
                                                      AppColors.darkGrey),
                                                  color: Colors.white,
                                                  borderColor:
                                                  AppColors.lightGrey,
                                                  onPressed: () {
                                                    _removeTextField(index);
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              AppElevatedButton(
                                text: "Save",
                                onPressed: () {
                                  final email = _titleController.text;
                                  final firstname = _salaryController.text;
                                  final lastname = _locationController.text;
                                  final phoneNumber =
                                      _descriptionController.text;

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
    _salaryNode.dispose();
    _locationNode.dispose();
    _descriptionNode.dispose();
    _salaryController.dispose();
    _locationController.dispose();
    _descriptionController.dispose();
    for (var controller in _questionControllers) {
      controller.dispose();
    }
    for (var focusNode in _questionNodes) {
      focusNode.dispose();
    }
    super.dispose();
    super.dispose();
  }
}

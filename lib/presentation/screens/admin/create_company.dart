import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/utils/toast.dart';
import 'package:industria/domain/repositories/admin_vacancy/admin_vacancy_repository_contract.dart';
import 'package:industria/presentation/bloc/companies_feature/create_company/create_company_bloc.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';
import 'package:industria/presentation/widgets/custom_text_form_field.dart';

import '../../../core/services/service_locator.dart';

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

  final CreateCompanyBloc _createCompanyBloc =
      CreateCompanyBloc(adminVacancyRepository: sl<AdminVacancyRepository>());

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateCompanyBloc, CreateCompanyState>(
      bloc: _createCompanyBloc,
      listener: (context, state) {
        state.maybeMap(
            loading: (_){
              showProgressSnackBar(context, "Creating a company...");
            },
            successful: (_) {
              showSuccessSnackBar(context, "Successfully created a company!");
              context.go("/admin/vacancies");
            },
            error: (_) {
              showErrorSnackBar(context, "Failed to create a company");
            },
            orElse: () {});
      },
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
                                        : Image.memory(Uint8List.fromList(
                                                _photoBytes!))
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
                            if (_photoFileName != null && _photoBytes != null) {
                              _createCompanyBloc.add(
                                  CreateCompanyEvent.createCompany(
                                      companyName: _nameController.text,
                                      photoName: _photoFileName!,
                                      photoBytes: _photoBytes!));
                            }
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

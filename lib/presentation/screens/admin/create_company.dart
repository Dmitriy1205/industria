import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/utils/toast.dart';
import 'package:industria/core/validator/field_validator.dart';
import 'package:industria/domain/repositories/admin_vacancy/admin_vacancy_repository_contract.dart';
import 'package:industria/presentation/bloc/companies_feature/create_company/create_company_bloc.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';
import 'package:industria/presentation/widgets/custom_text_form_field.dart';

import '../../../app/router.dart';
import '../../../core/services/service_locator.dart';
import '../../bloc/companies_feature/admin_companies_list/admin_companies_list_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

  final _formKey = GlobalKey<FormState>();

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
              context.read<AdminCompaniesListBloc>().add(AdminCompaniesListEvent.fetchData(page: 0, elementsPerPage: 7));
              context.go("/admin/companies");
            },
            error: (e) {
              if(e.code == 'name-exists'){
                showErrorSnackBar(context, "Company with such name exists");
              }else{
                showErrorSnackBar(context, "Failed to create a company");
              }
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
              Row(
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        router.go('/admin/companies');
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                        size: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    AppLocalizations.of(context)!.companies,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " / ${AppLocalizations.of(context)!.createCompany}",
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
                    child: Form(
                      key: _formKey,
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
                                  Container(
                                      width: 40,
                                      height: 40,
                                      color: _photoBytes == null ? AppColors.lightGrey : null,
                                      child: _photoBytes == null
                                          ? null
                                          : Image.memory(Uint8List.fromList(
                                                  _photoBytes!))),
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
                                      child: Text(
                                        AppLocalizations.of(context)!.changePhoto,
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
                              labelText: '${AppLocalizations.of(context)!.companyName}*',
                              textInputType: TextInputType.text,
                              validator: Validator.validate,
                              isSavePressed: true,
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          AppElevatedButton(
                            text: AppLocalizations.of(context)!.create,
                            onPressed: () {
                              final isValid = _formKey.currentState!.validate();
                              if(!isValid) return;
                              if(_photoFileName == null || _photoBytes == null){
                                showErrorSnackBar(context, "Select company logo");
                                return;
                              }
                              _createCompanyBloc.add(
                                  CreateCompanyEvent.createCompany(
                                      companyName: _nameController.text,
                                      photoName: _photoFileName!,
                                      photoBytes: _photoBytes!));
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
                ),
              )
            ],
          ),
        ),
      ),
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

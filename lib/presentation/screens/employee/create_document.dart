import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/domain/repositories/employee_documents/employee_documents_repository_contract.dart';
import 'package:industria/domain/repositories/holiday_requests/holiday_requests_repository_contract.dart';
import 'package:industria/presentation/bloc/create_report/create_report_bloc.dart';
import 'package:industria/presentation/bloc/employee_documents_feature/create_employee_document/create_employee_document_bloc.dart';
import 'package:industria/presentation/widgets/file_upload_widget.dart';
import '../../../core/constants/colors.dart';
import '../../../core/services/service_locator.dart';
import '../../../core/themes/theme.dart';
import '../../../core/utils/toast.dart';
import '../../../core/validator/field_validator.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../../widgets/app_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class CreateDocument extends StatefulWidget {
  const CreateDocument({Key? key}) : super(key: key);

  @override
  State<CreateDocument> createState() => _CreateDocumentState();
}

class _CreateDocumentState extends State<CreateDocument> {
  final _createDocumentBloc = sl<CreateEmployeeDocumentBloc>();

  FocusNode nameFocusNode = FocusNode();

  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();

  String? _filename;
  List<int>? _bytes;

  @override
  void dispose() {
    nameController.dispose();
    nameFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<CreateEmployeeDocumentBloc,
              CreateEmployeeDocumentState>(
          bloc: _createDocumentBloc,
          listener: (context, CreateEmployeeDocumentState state) {
            state.maybeMap(
                loading: (_) {
                  showProgressSnackBar(context, AppLocalizations.of(context)!.creatingDocument);
                },
                success: (_) {
                  showSuccessSnackBar(context, AppLocalizations.of(context)!.successCreateDocument);
                  context.go('/employees/documents');
                },
                fail: (value) {
                  showErrorSnackBar(context, AppLocalizations.of(context)!.failedCreatedDocument);
                },
                orElse: () {});
          },
          child: SizedBox(
            height: double.infinity,
            child: ColoredBox(
                color: AppColors.background,
                child: Padding(
                  padding: MediaQuery.of(context).size.width > 1350
                      ? const EdgeInsets.all(0)
                      : const EdgeInsets.symmetric(horizontal: 24),
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: IntrinsicHeight(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 22,
                                  ),
                                  Container(height: 67, width: double.infinity,
                                    constraints: BoxConstraints(maxWidth: 550),
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                                      color: const Color(0xFFD1EAFF)), child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 30),
                                        child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: (){

                                          },
                                          icon: Icon(FontAwesomeIcons.chevronLeft, color: AppColors.mainDarkAccent, size: 13,)),
                                      SizedBox(width: 25,),
                                      Text(AppLocalizations.of(context)!.creatingDocument, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.mainDarkAccent),)
                                    ],
                                  ),
                                      ),),
                                  Expanded(
                                    child: Container(
                                      constraints: BoxConstraints(maxWidth: 550),
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12))),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 37, right: 51, top: 16, bottom: 41),
                                        child: Form(
                                          key: _formKey,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(AppLocalizations.of(context)!.uploadDocumentHint1, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),),
                                                Text(AppLocalizations.of(context)!.uploadDocumentHint2, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.darkGrey),),
                                                SizedBox(height: 24,),
                                                Expanded(
                                                  child: CustomTextFormField(
                                                    maxLines: 1,
                                                    focusNode: nameFocusNode,
                                                    textController: nameController,
                                                    labelText:
                                                        AppLocalizations.of(context)!
                                                            .name,
                                                    validator: Validator.validate,
                                                    textInputType: TextInputType.text,
                                                    onChange: (_) {},
                                                    isSavePressed: false,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 24,
                                                ),
                                                SizedBox(
                                                  width: double.infinity,
                                                  height: 200,
                                                  child: FileUploadFormWidget(
                                                      validationError: AppLocalizations.of(context)!.selectFile,
                                                      icon: FontAwesomeIcons.solidFile, hint: "${AppLocalizations.of(context)!.dragYouFileHere}*", pickedFilesNames: _filename == null ? [] : [_filename!], onPick: (files){
                                                    final file = files.first;
                                                    _bytes = file.bytes;
                                                    _filename = file.filename;
                                                    setState(() {});
                                                  }, singlePick: true, mandatory: true),
                                                ),
                                                const SizedBox(
                                                  height: 24,
                                                ),
                                                AppElevatedButton(
                                                  borderRadius: 15,
                                                  text: AppLocalizations.of(context)!.upload,
                                                  textStyle:
                                                      const TextStyle(fontSize: 14),
                                                  onPressed: () {
                                                    if (!_formKey.currentState!
                                                        .validate()) {
                                                      return;
                                                    }
                                                    _createDocumentBloc.add(
                                                        CreateEmployeeDocumentEvent
                                                            .createDocument(
                                                      name: nameController.text,
                                                      bytes: _bytes!,
                                                      employeeUid: context.read<AuthBloc>().state.employee!.id!,
                                                          filename: _filename!
                                                    ));
                                                    nameController.clear();
                                                    setState(() {});
                                                  },
                                                  verticalPadding: 10,
                                                ),
                                                // SizedBox(height: 50,)
                                              ]),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          )),
    );
  }
}

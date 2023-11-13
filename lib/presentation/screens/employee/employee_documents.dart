import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/core/utils/download_file.dart';
import 'package:industria/core/utils/download_storage_file.dart';
import 'package:industria/domain/entities/employee_document/employee_document.dart';
import 'package:industria/presentation/bloc/auth/auth_bloc.dart';
import 'package:industria/presentation/bloc/employee_documents_feature/delete_employee_document/delete_employee_document_bloc.dart';
import 'package:pandas_tableview/p_tableview.dart';
import '../../../app/router.dart';
import '../../../core/constants/colors.dart';
import '../../../core/services/service_locator.dart';
import '../../../core/themes/theme.dart';
import '../../../core/utils/toast.dart';
import '../../../domain/entities/holiday_request/holiday_request.dart';
import '../../bloc/employee_documents_feature/employee_documents/employee_documents_bloc.dart';
import '../../bloc/holiday_request_feature/admin_holiday_requests_list/admin_holiday_requests_list_bloc.dart';
import '../../bloc/localization/localization_bloc.dart';
import '../../widgets/app_elevated_button.dart';
import '../../widgets/custom_checkbox.dart';

class EmployeeDocuments extends StatefulWidget {
  const EmployeeDocuments({Key? key}) : super(key: key);

  @override
  State<EmployeeDocuments> createState() => _EmployeeDocumentsState();
}

class _EmployeeDocumentsState extends State<EmployeeDocuments> {
  int currentPage = 0;

  bool get isVisible => idEmployeeDocuments.isNotEmpty;
  List<String> idEmployeeDocuments = [];
  bool value = false;
  DeleteEmployeeDocumentBloc deleteEmployeeDocumentsBloc = sl<DeleteEmployeeDocumentBloc>();

  @override
  void initState() {
    super.initState();
    if (context.read<AuthBloc>().state.employee != null) {
      context.read<EmployeeDocumentsBloc>().add(
          EmployeeDocumentsEvent.fetchData(
              employeeUid: context.read<AuthBloc>().state.employee!.id!));
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.background,
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.isEmployeeAuthenticated) {
            context.read<EmployeeDocumentsBloc>().add(
                EmployeeDocumentsEvent.fetchData(
                    employeeUid: context.read<AuthBloc>().state.employee!.id!));
          }
        },
        child: BlocConsumer<DeleteEmployeeDocumentBloc, DeleteEmployeeDocumentState>(
            bloc: deleteEmployeeDocumentsBloc,
            listener: (context, DeleteEmployeeDocumentState state) {
              state.maybeMap(
                success: (_) {
                  showSuccessSnackBar(context, "Report deleted successfully!");
                  Future.delayed(
                    Duration(seconds: 1),
                        () {
                          context.read<EmployeeDocumentsBloc>().add(
                              EmployeeDocumentsEvent.fetchData(
                                  employeeUid: context.read<AuthBloc>().state.employee!.id!));
                      setState(() {
                        idEmployeeDocuments.clear();
                      });
                    },
                  );
                },
                initial: (_) {
                  context.read<EmployeeDocumentsBloc>().add(
                      EmployeeDocumentsEvent.fetchData(
                          employeeUid: context.read<AuthBloc>().state.employee!.id!));
                },
                loading: (_) {
                  showProgressSnackBar(context);
                },
                fail: (_) {
                  showErrorSnackBar(context, 'Error: Report is not Deleted');
                },
                orElse: () {},
              );
            },
            builder: (BuildContext context, DeleteEmployeeDocumentState state) {
              return Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  LayoutBuilder(builder: (context, constraints) {
                    return constraints.maxWidth < 950
                        ? Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 16,
                          ),
                          _tableTitle(
                              title:
                              "Documents",
                              subtitle: context
                                  .read<EmployeeDocumentsBloc>()
                                  .state
                                  .documents
                                  .length
                                  .toString()),
                          Spacer(),
                          SizedBox(
                              width: 200,
                              child: AppElevatedButton(
                                text: "Create document",
                                prefixIcon: const Icon(
                                  size: 15,
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                                textStyle: const TextStyle(fontSize: 14),
                                onPressed: () {
                                  context.go('/employee/create_document');
                                },
                                verticalPadding: 15,
                              ))
                        ],
                      ),
                    )
                        : Padding(
                      padding:
                      const EdgeInsets.only(left: 142, right: 142),
                      child: SizedBox(
                        height: 52,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 16,
                            ),
                            _tableTitle(
                                title:
                                "Documents",
                                subtitle: context
                                    .read<EmployeeDocumentsBloc>()
                                    .state
                                    .documents
                                    .length
                                    .toString()),
                            Spacer(),
                            SizedBox(
                                width: 200,
                                child: AppElevatedButton(
                                  text: "Create document",
                                  prefixIcon: const Icon(
                                    size: 15,
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                  textStyle:
                                  const TextStyle(fontSize: 14),
                                  onPressed: () {
                                    context.go('/employee/create_document');
                                  },
                                  verticalPadding: 15,
                                ))
                          ],
                        ),
                      ),
                    );
                  }),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 151),
                        child: Visibility(
                          visible: isVisible,
                          child: Row(
                            children: [
                              Text(
                                  '${idEmployeeDocuments.length} ${AppLocalizations.of(context)!.selected}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12)),
                              SizedBox(
                                width: 25,
                              ),
                              GestureDetector(
                                onTap: () {
                                  deleteBucketDialog(
                                    context,
                                    text:
                                    'Are you sure you want to delete selected document?',
                                  );
                                },
                                child: SizedBox(
                                  height: 16,
                                  child: Text(
                                      AppLocalizations.of(context)!
                                          .deleteSelected,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                          color: AppColors.danger)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: Padding(
                        padding: MediaQuery.of(context).size.width > 1350
                            ? EdgeInsets.only(left: 142, right: 142)
                            : EdgeInsets.symmetric(horizontal: 24),
                        child: PTableView(
                          pagination: null,
                          fixedHeight: 500,
                          borderRadius: BorderRadius.circular(4),
                          headerHeight: 45,
                          header: PTableViewHeader(
                            contentPadding: EdgeInsets.symmetric(horizontal: 30),
                            backgroundColor: Color(0xFFF1F1F1),
                            rows: [
                              PTableViewRowFixed(
                                width: 290,
                                child: Row(
                                  children: [
                                    CustomCheckbox(
                                        value: value,
                                        onChanged: (v) {
                                          if (v == true) {
                                            value = true;
                                            idEmployeeDocuments.clear();
                                            idEmployeeDocuments.addAll(context
                                                .read<EmployeeDocumentsBloc>()
                                                .state
                                                .documents
                                                .map((e) => e.id)
                                                .toList());
                                          } else {
                                            value = false;
                                            idEmployeeDocuments.clear();
                                          }
                                          setState(() {});
                                        }),
                                    SizedBox(width: 13,),
                                    Text(
                                      AppLocalizations.of(context)!.name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              PTableViewRowFixed(
                                  width: 350,
                                  child: Text(
                                    "Extension",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500, fontSize: 12),
                                  )),
                              PTableViewRowFixed(
                                  width: 300,
                                  child: Text(
                                    AppLocalizations.of(context)!.actions,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500, fontSize: 12),
                                  )),
                            ],
                          ),
                          content: PTableViewContent(
                            onTap: (i) {},
                            divider: BorderSide(
                              width: 1,
                              color: AppColors.lightGrey,
                            ),
                            backgroundColor: Colors.white,
                            horizontalPadding: 30,
                            columns: context
                                .watch<EmployeeDocumentsBloc>()
                                .state
                                .documents
                                .map((e) {
                              return _documentsList(document: e);
                            }).toList(),
                          ),
                        ),
                      ))
                ],
              );
            }),
      ),
    );
  }

  PTableViewColumn _documentsList({required EmployeeDocument document}) {
    return PTableViewColumn(rows: [
      PTableViewRowFixed(
          width: 290,
          child: SizedBox(
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomCheckbox(
                    value: idEmployeeDocuments.contains(document.id),
                    onChanged: (v) {
                      setState(() {
                        if (v!) {
                          idEmployeeDocuments.add(document.id);
                        } else {
                          idEmployeeDocuments.remove(document.id);
                        }
                      });
                    }),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  document.name,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )),
      PTableViewRowFixed(
          width: 350,
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                document.location.split(".").last,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          )),
      PTableViewRowFixed(
          width: 300,
          child: SizedBox(
            height: 60,
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 120,
                child: AppElevatedButton(
                  text: "Download",
                  verticalPadding: 5,
                  textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
                  color: AppColors.lightGrey,
                  borderRadius: 16,
                  onPressed: () async{
                    await downloadStorageFile(document.location);
                  },
                ),
              ),
            ),
          )),
    ]);
  }

  Widget _tableTitle({required String title, required String subtitle}) {
    return SizedBox(
      height: 25,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 1,
            height: double.infinity,
            color: AppColors.darkGrey,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            subtitle,
            style: const TextStyle(
                color: AppColors.darkGrey, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  deleteBucketDialog(BuildContext context, {required String text}) {
    Widget cancelButton = TextButton(
      child: const Text(
        'Cancel',
        style: TextStyle(color: AppColors.red),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: const Text(
        'Delete',
        style: TextStyle(color: AppColors.mainAccent),
      ),
      onPressed: () {
        deleteEmployeeDocumentsBloc
            .add(DeleteEmployeeDocumentEvent.deleteDocument(employeeUid: context.read<AuthBloc>().state.employee!.id!, uids: idEmployeeDocuments));
        Navigator.pop(context);
      },
    );
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      title: Text('Warning', style: AppTheme.themeData.textTheme.titleSmall),
      content: Text(text, style: AppTheme.themeData.textTheme.bodySmall),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      useRootNavigator: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

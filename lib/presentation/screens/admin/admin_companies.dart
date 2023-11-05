import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/presentation/bloc/companies_feature/admin_companies_list/admin_companies_list_bloc.dart';
import 'package:industria/presentation/widgets/table_action.dart';
import 'package:pandas_tableview/p_tableview.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/images.dart';
import '../../../core/services/service_locator.dart';
import '../../../core/utils/debounce.dart';
import '../../../core/utils/toast.dart';
import '../../../domain/entities/company/company.dart';
import '../../../domain/repositories/admin_company/admin_company_repository_contract.dart';
import '../../bloc/companies_feature/admin_delete_company/admin_delete_company_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../widgets/app_elevated_button.dart';
import '../../widgets/firebase_image.dart';

class AdminCompanies extends StatefulWidget {
  const AdminCompanies({Key? key}) : super(key: key);

  @override
  State<AdminCompanies> createState() => _AdminCompaniesState();
}

class _AdminCompaniesState extends State<AdminCompanies> {

  @override
  void initState() {
    super.initState();
    if(context.read<AdminCompaniesListBloc>().state.tableData.element.isEmpty){
      context.read<AdminCompaniesListBloc>().add(const AdminCompaniesListEvent.fetchData(elementsPerPage: 7, page: 0));
    }
  }

  final Debouncer _debouncer = Debouncer(milliseconds: 500);

  final deleteCompanyBloc = AdminDeleteCompanyBloc(adminCompanyRepository: sl<AdminCompanyRepository>());

  @override
  Widget build(BuildContext context) {
    return BlocListener<AdminDeleteCompanyBloc,AdminDeleteCompanyState>(
        bloc: deleteCompanyBloc,
        listener: (context,state){
          state.maybeMap(
              loading: (_){
                showProgressSnackBar(context, "Deleting company...");
              },
              success: (_){
                showSuccessSnackBar(context, "Successfully deleted company");
                context.read<AdminCompaniesListBloc>().add(AdminCompaniesListEvent.fetchData(page: 0, elementsPerPage: 7));
              },
              fail: (_){
                showErrorSnackBar(context, "Failed to delete company");
              },
              orElse: (){});
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 16, bottom: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              LayoutBuilder(builder: (context,constraints){
                return constraints.maxWidth < 700 ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 16,),
                    _tableTitle(title: AppLocalizations.of(context)!.companies, subtitle: context.watch<AdminCompaniesListBloc>().state.tableData.totalElementCounts.toString()),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 40,
                      child: _search(onTextChanged: (val){
                        _debouncer.run(() {
                          context.read<AdminCompaniesListBloc>().add(AdminCompaniesListEvent.changeSearchTerm(searchTerm: val));
                        });
                      }),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                        width: 200,
                        child: AppElevatedButton(
                          text: AppLocalizations.of(context)!.createCompany,
                          prefixIcon: const Icon(
                            FontAwesomeIcons.plus,
                            color: Colors.white,
                          ),
                          textStyle: const TextStyle(fontSize: 14),
                          onPressed: () {
                            context.go('/admin/create_company');
                          },
                          verticalPadding: 15,
                        ))
                  ],
                )  : SizedBox(
                  height: 52,
                  child: Row(
                    children: [
                      SizedBox(width: 16,),
                      _tableTitle(title: AppLocalizations.of(context)!.companies, subtitle: context.watch<AdminCompaniesListBloc>().state.tableData.totalElementCounts.toString()),
                      const SizedBox(
                        width: 60,
                      ),
                      Expanded(child: _search(onTextChanged: (val){
                        _debouncer.run(() {
                          context.read<AdminCompaniesListBloc>().add(AdminCompaniesListEvent.changeSearchTerm(searchTerm: val));
                        });
                      })),
                      const SizedBox(
                        width: 60,
                      ),
                      SizedBox(
                          width: 200,
                          child: AppElevatedButton(
                            text: AppLocalizations.of(context)!.createCompany,
                            prefixIcon: const Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                            ),
                            textStyle: const TextStyle(fontSize: 14),
                            onPressed: () {
                              context.go('/admin/create_company');
                            },
                            verticalPadding: 15,
                          ))
                    ],
                  ),
                );
              }),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: PTableView(
                  pagination: PTableViewPagination(
                    currentPage: context.watch<AdminCompaniesListBloc>().state.tableData.currentPage,
                    pagesCount: context.watch<AdminCompaniesListBloc>().state.tableData.numberOfPages,
                    onPageChanged: (i) {
                      context.read<AdminCompaniesListBloc>().add(AdminCompaniesListEvent.fetchData(page: i, elementsPerPage: 7));
                    },
                  ),
                  fixedHeight: 500,
                  borderRadius: BorderRadius.circular(4),
                  headerHeight: 45,
                  header: PTableViewHeader(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    backgroundColor: Color(0xFFF1F1F1),
                    rows: [
                      PTableViewRowFixed(
                        width: 600,
                        child: Text(
                          AppLocalizations.of(context)!.companyName.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),),
                      PTableViewRowFixed(
                          width: 230,
                          child: Text(
                            AppLocalizations.of(context)!.actions.toUpperCase(),
                            style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                          )),
                    ],
                  ),
                  content: PTableViewContent(
                      onTap: (i){

                      },
                      divider: BorderSide(
                        width: 1,
                        color: AppColors.lightGrey,
                      ),
                      backgroundColor: Colors.white,
                      horizontalPadding: 30,
                      columns: context
                          .watch<AdminCompaniesListBloc>()
                          .state
                          .tableData
                          .element
                          .map((e) => _companiesList(company: e))
                          .toList()),
                ),
              )
            ],
          ),
        ),);
  }

  PTableViewColumn _companiesList({required Company company}) {
    return PTableViewColumn(
        rows: [
          PTableViewRowFixed(
              width: 600,
              child: SizedBox(
                height: 52,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: FirebaseImage(storageRef: company.logo),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      company.name,
                      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )),
          PTableViewRowFixed(
              width: 230,
              child: SizedBox(
                height: 52,
                child: Row(
                  children: [
                    TableAction(
                        hoverColor: AppColors.mainAccent,
                        title: AppLocalizations.of(context)!.change,
                        icon: FontAwesomeIcons.pencil,
                        onTap: () {
                          context.go("/admin/update_company?id=${company.id}");
                        }),
                    const Spacer(),
                    TableAction(
                        hoverColor: AppColors.danger,
                        title: AppLocalizations.of(context)!.delete,
                        icon: FontAwesomeIcons.solidTrashCan,
                        onTap: () async{
                          final response = await showOkCancelAlertDialog(context: context, title: AppLocalizations.of(context)!.confirmOperation, message: AppLocalizations.of(context)!.questionDeleteCompany, okLabel: AppLocalizations.of(context)!.confirm);
                          if(response == OkCancelResult.ok){
                            if(!mounted) return;
                            deleteCompanyBloc.add(AdminDeleteCompanyEvent.deleteCompany(companyUid: company.id));
                          }
                        }),
                  ],
                ),
              )),
        ]);
  }

  Widget _search({required Function(String) onTextChanged}) {
    return SizedBox(
      height: 39,
      child: TextField(
        onChanged: onTextChanged,
        decoration: InputDecoration(
            contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            hintText: AppLocalizations.of(context)!.search,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(11),
              child: SvgPicture.asset(
                AppImages.search,
                color: AppColors.darkGrey,
                width: 16,
                height: 16,
              ),
            ),
            hintStyle: const TextStyle(color: AppColors.darkGrey,),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
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
}

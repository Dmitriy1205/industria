import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/constants/images.dart';
import 'package:industria/core/utils/debounce.dart';
import 'package:industria/core/utils/toast.dart';
import 'package:industria/domain/repositories/admin_employee/admin_employee_repository_contract.dart';
import 'package:industria/presentation/bloc/employee_feature/admin_delete_employee/admin_delete_employee_bloc.dart';
import 'package:industria/presentation/bloc/employee_feature/admin_employee_list/admin_employee_list_bloc.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';
import 'package:industria/presentation/widgets/firebase_image.dart';
import 'package:pandas_tableview/p_tableview.dart';

import '../../../core/services/service_locator.dart';
import '../../../domain/entities/employee/employee.dart';

class AdminUsers extends StatefulWidget {
  const AdminUsers({Key? key}) : super(key: key);

  @override
  State<AdminUsers> createState() => _AdminUsersState();
}

class _AdminUsersState extends State<AdminUsers> {
  @override
  void initState() {
    super.initState();
    if(context.read<AdminEmployeeListBloc>().state.tableData.element.isEmpty){
      context.read<AdminEmployeeListBloc>().add(const AdminEmployeeListEvent.fetchData(elementsPerPage: 7, page: 0));
    }
  }

  final Debouncer _debouncer = Debouncer(milliseconds: 500);

  final deleteEmployeeBloc = AdminDeleteEmployeeBloc(adminEmployeeRepository: sl<AdminEmployeeRepository>());

  @override
  Widget build(BuildContext context) {
    return BlocListener<AdminDeleteEmployeeBloc, AdminDeleteEmployeeState>(
      bloc: deleteEmployeeBloc,
      listener: (context,state){
        state.maybeMap(
            loading: (_){
              showProgressSnackBar(context, "Deleting employee account...");
            },
            success: (_){
              showSuccessSnackBar(context, "Successfully deleted employee");
              context.read<AdminEmployeeListBloc>().add(AdminEmployeeListEvent.fetchData(page: 0, elementsPerPage: 5));
            },
            fail: (_){
              showErrorSnackBar(context, "Failed to delete employee");
            },
            orElse: (){});
      },
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              _tableTitle(title: 'All Employees', subtitle: context.watch<AdminEmployeeListBloc>().state.tableData.totalElementCounts.toString()),
              const SizedBox(
                width: 60,
              ),
              Expanded(child: _search(onTextChanged: (val){
                _debouncer.run(() {
                  context.read<AdminEmployeeListBloc>().add(AdminEmployeeListEvent.changeSearchTerm(searchTerm: val));
                });
              })),
              const SizedBox(
                width: 60,
              ),
              SizedBox(
                  width: 200,
                  child: AppElevatedButton(
                    text: "Create account",
                    prefixIcon: const Icon(
                      FontAwesomeIcons.plus,
                      color: Colors.white,
                    ),
                    textStyle: const TextStyle(fontSize: 14),
                    onPressed: () {
                      context.go("/admin/create_user");
                    },
                    verticalPadding: 15,
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: PTableView(
              pagination: PTableViewPagination(
                currentPage: context.watch<AdminEmployeeListBloc>().state.tableData.currentPage,
                pagesCount: context.watch<AdminEmployeeListBloc>().state.tableData.numberOfPages,
                onPageChanged: (i) {
                  context.read<AdminEmployeeListBloc>().add(AdminEmployeeListEvent.fetchData(page: i, elementsPerPage: 5));
                },
              ),
              fixedHeight: 500,
              borderRadius: BorderRadius.circular(4),
              headerHeight: 45,
              header: const PTableViewHeader(
                contentPadding: EdgeInsets.symmetric(horizontal: 30),
                backgroundColor: Color(0xFFF1F1F1),
                rows: [
                  PTableViewRowFixed(
                      width: 300,
                      child: Text(
                        "TOPIC",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),),
                  PTableViewRowFixed(
                      width: 400,
                      child: Center(
                        child: Text(
                          "POSITION",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                      )),
                  PTableViewRowFixed(
                      width: 400,
                      child: Text(
                        "ACTIONS",
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                      )),
                ],
              ),
              content: PTableViewContent(
                onTap: (i){
                  context.go("/admin/view_user", extra: context
                      .read<AdminEmployeeListBloc>()
                      .state
                      .tableData
                      .element[i]);
                },
                  divider: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey,
                  ),
                  backgroundColor: Colors.white,
                  contentPadding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 15),
                  columns: context
                      .watch<AdminEmployeeListBloc>()
                      .state
                      .tableData
                      .element
                      .map((e) => _employeesList(employee: e))
                      .toList()),
            ),
          )
        ],
      ),
    );
  }

  PTableViewColumn _employeesList({required Employee employee}) {
    return PTableViewColumn(
        rows: [
      PTableViewRowFixed(
          width: 300,
          child: SizedBox(
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FirebaseImage(storageRef: employee.photoRef, rounded: true,),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${employee.firstname} ${employee.lastname}",
                        style: const TextStyle(fontWeight: FontWeight.w600),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        employee.email,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: AppColors.darkGrey,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
      PTableViewRowFixed(
          width: 400,
          child: SizedBox(
            height: 60,
            child: Center(
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFF1F1F1)),
                  child: Text(
                    employee.role,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: Color(0xfF282828)),
                  )),
            ),
          )),
      PTableViewRowFixed(
          width: 400,
          child: SizedBox(
            height: 60,
            child: Row(
              children: [
                _tableAction(
                    title: 'Change credentials',
                    icon: FontAwesomeIcons.userPen,
                    onTap: () {
                      context.push("/admin/user", extra: employee);
                    }),
                const Spacer(),
                _tableAction(
                    title: 'Delete account',
                    icon: FontAwesomeIcons.solidTrashCan,
                    onTap: () async{
                      final response = await showOkCancelAlertDialog(context: context, title: 'Confirm operation', message: 'Are you sure you want to delete an employee?', okLabel: 'Confirm');
                      if(response == OkCancelResult.ok){
                        if(!mounted) return;
                        deleteEmployeeBloc.add(AdminDeleteEmployeeEvent.deleteEmployee(userUid: employee.id!));
                      }
                    }),
              ],
            ),
          )),
    ]);
  }

  Widget _tableAction(
      {required String title,
      required IconData icon,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: SelectionContainer.disabled(
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Row(
            children: [
              Icon(
                icon,
                size: 18,
                color: AppColors.darkGrey,
              ),
              const SizedBox(
                width: 14,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, color: AppColors.darkGrey),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _search({required Function(String) onTextChanged}) {
    return SizedBox(
      height: 39,
      child: TextField(
        onChanged: onTextChanged,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            hintText: 'Search',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(11),
              child: SvgPicture.asset(
                AppImages.search,
                color: AppColors.darkGrey,
                width: 16,
                height: 16,
              ),
            ),
            hintStyle: const TextStyle(color: AppColors.darkGrey),
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


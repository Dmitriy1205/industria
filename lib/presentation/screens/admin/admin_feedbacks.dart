import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:industria/presentation/widgets/custom_checkbox.dart';
import 'package:pandas_tableview/p_tableview.dart';

import '../../../core/constants/colors.dart';
import '../../../domain/entities/employee/employee.dart';
import '../../widgets/firebase_image.dart';

class AdminFeedbacks extends StatelessWidget {
  const AdminFeedbacks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0,top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              _tableTitle(title: 'Feedbacks', subtitle: '120'),
              const SizedBox(
                width: 60,
              ),
              const SizedBox(
                width: 60,
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: PTableView(
              pagination: PTableViewPagination(
                currentPage: 1,
                pagesCount: 1,
                onPageChanged: (i) {
                  // context.read<AdminEmployeeListBloc>().add(AdminEmployeeListEvent.fetchData(page: i, elementsPerPage: 5));
                },
              ),
              fixedHeight: 500,
              borderRadius: BorderRadius.circular(4),
              headerHeight: 45,
              header:  PTableViewHeader(
                contentPadding: EdgeInsets.symmetric(horizontal: 18),
                backgroundColor: Color(0xFFF1F1F1),
                rows: [
                  PTableViewRowFixed(
                    width: 701,
                    child: Row(
                      children: [
                        CustomCheckbox(value: false, onChanged: (v){}),
                        const SizedBox(width: 21,),
                        const Text(
                          "MESSAGE",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                      ],
                    ),),
                  const PTableViewRowFixed(
                      width: 228,
                      child: Center(
                        child: Text(
                          "FROM",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                      )),
                  const PTableViewRowFixed(
                      width: 202,
                      child: Text(
                        "DATE",
                        style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                      )),
                ],
              ),
              content: PTableViewContent(
                  onTap: (i){
                    // context.go("/admin/view_user", extra: context
                    //     .read<AdminEmployeeListBloc>()
                    //     .state
                    //     .tableData
                    //     .element[i]);
                  },
                  divider: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey,
                  ),
                  backgroundColor: Colors.white,
                horizontalPadding: 30,
                columns: [],
                  // columns: context
                  //     .watch<AdminEmployeeListBloc>()
                  //     .state
                  //     .tableData
                  //     .element
                  //     .map((e) => _employeesList(employee: e))
                  //     .toList()
      ),
            ),
          )
        ],
      ),
    );
  }
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
                        // context.push("/admin/user", extra: employee);
                      }),
                  const Spacer(),
                  _tableAction(
                      title: 'Delete account',
                      icon: FontAwesomeIcons.solidTrashCan,
                      onTap: () async{
                        // final response = await showOkCancelAlertDialog(context: context, title: 'Confirm operation', message: 'Are you sure you want to delete an employee?', okLabel: 'Confirm');
                        // if(response == OkCancelResult.ok){
                        //   if(!mounted) return;
                        //   deleteEmployeeBloc.add(AdminDeleteEmployeeEvent.deleteEmployee(userUid: employee.id!));
                        // }
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
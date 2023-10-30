import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pandas_tableview/p_tableview.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/images.dart';
import '../../domain/entities/employee/employee.dart';
import '../widgets/app_elevated_button.dart';
import '../widgets/bold_text_widget.dart';
import '../widgets/firebase_image.dart';

class Messaging extends StatefulWidget {
  const Messaging({Key? key}) : super(key: key);

  @override
  State<Messaging> createState() => _MessagingState();
}

class _MessagingState extends State<Messaging> {
  @override
  // Widget build(BuildContext context) {
  //   return ColoredBox(
  //     color: AppColors.background,
  //     child: Column(
  //       children: [
  //         Row(
  //           children: [
  //             BoldTextWidget(
  //               text: 'Messaging',
  //               style: AppTheme.themeData.textTheme.labelLarge!.copyWith(
  //                 color: const Color(0xFF091312),
  //                 fontWeight: FontWeight.w600,
  //               ),
  //             ),
  //             BoldTextWidget(
  //               text: '20',
  //               style: AppTheme.themeData.textTheme.labelLarge!.copyWith(
  //                   color: const Color(0xFF8B8B8B),
  //                   fontWeight: FontWeight.w600,
  //                   fontSize: 14),
  //             ),
  //             TextField(
  //               decoration: InputDecoration(icon: Icon(Icons.search)),
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        LayoutBuilder(builder: (context,constraints){
          return constraints.maxWidth < 700 ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 16,),
              _tableTitle(title: AppLocalizations.of(context)!.messaging, subtitle: '20'),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                child: _search(onTextChanged: (val){
                  print(val);
                }),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  width: 200,
                  child: AppElevatedButton(
                    text: 'AppElevatedButton',
                    prefixIcon: const Icon(
                      FontAwesomeIcons.plus,
                      color: Colors.white,
                    ),
                    textStyle: const TextStyle(fontSize: 14),
                    onPressed: () {
                      print(AppElevatedButton);
                      // context.go("/admin/create_user");
                    },
                    verticalPadding: 15,
                  ))
            ],
          )  : SizedBox(
            height: 52,
            child: Row(
              children: [
                SizedBox(width: 16,),
                _tableTitle(title: '_tableTitle',
                    subtitle: 'subtitle'),
                const SizedBox(
                  width: 60,
                ),
                Expanded(child: _search(onTextChanged: (val){
                  print(val);
                })),
                const SizedBox(
                  width: 60,
                ),
                SizedBox(
                    width: 200,
                    child: AppElevatedButton(
                      text: 'AppElevatedButton',
                      prefixIcon: const Icon(
                        FontAwesomeIcons.plus,
                        color: Colors.white,
                      ),
                      textStyle: const TextStyle(fontSize: 14),
                      onPressed: () {
                        print('AppElevatedButton');
                        // context.go("/admin/create_user");
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
        // Expanded(
          // child: PTableView(
          //   pagination: PTableViewPagination(
          //     currentPage: context.watch<AdminEmployeeListBloc>().state.tableData.currentPage,
          //     pagesCount: context.watch<AdminEmployeeListBloc>().state.tableData.numberOfPages,
          //     onPageChanged: (i) {
          //       context.read<AdminEmployeeListBloc>().add(AdminEmployeeListEvent.fetchData(page: i, elementsPerPage: 7));
          //     },
          //   ),
          //   fixedHeight: 500,
          //   borderRadius: BorderRadius.circular(4),
          //   headerHeight: 45,
          //   header: PTableViewHeader(
          //     contentPadding: EdgeInsets.symmetric(horizontal: 30),
          //     backgroundColor: Color(0xFFF1F1F1),
          //     rows: [
          //       PTableViewRowFixed(
          //         width: 300,
          //         child: Text(
          //           AppLocalizations.of(context)!.topic.toUpperCase(),
          //           style: TextStyle(
          //               fontWeight: FontWeight.w500, fontSize: 12),
          //         ),),
          //       PTableViewRowFixed(
          //           width: 400,
          //           child: Center(
          //             child: Text(
          //               AppLocalizations.of(context)!.position.toUpperCase(),
          //               style: TextStyle(
          //                   fontWeight: FontWeight.w500, fontSize: 12),
          //             ),
          //           )),
          //       PTableViewRowFixed(
          //           width: 550,
          //           child: Text(
          //             AppLocalizations.of(context)!.actions.toUpperCase(),
          //             style:
          //             TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          //           )),
          //     ],
          //   ),
          //   content: PTableViewContent(
          //       onTap: (i){
          //         context.go("/admin/view_user?id=${context
          //             .read<AdminEmployeeListBloc>()
          //             .state
          //             .tableData
          //             .element[i].id}");
          //       },
          //       divider: BorderSide(
          //         width: 1,
          //         color: Colors.grey,
          //       ),
          //       backgroundColor: Colors.white,
          //       horizontalPadding: 30,
          //       columns: context
          //           .watch<AdminEmployeeListBloc>()
          //           .state
          //           .tableData
          //           .element
          //           .map((e) => _employeesList(employee: e))
          //           .toList()),
          // ),
        // )
      ],
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
              width: 550,
              child: SizedBox(
                height: 60,
                child: Row(
                  children: [
                    _tableAction(
                        title: '_tableAction',
                        icon: FontAwesomeIcons.userPen,
                        onTap: () {
                          print('_tableAction');
                          // context.push("/admin/user?id=${employee.id}");
                        }),
                    const Spacer(),
                    _tableAction(
                        title: '_tableAction',
                        icon: FontAwesomeIcons.solidTrashCan,
                        onTap: () async{
                          final response = await showOkCancelAlertDialog(context: context, title: 'response',
                              message: 'message', okLabel: 'confirm');
                          if(response == OkCancelResult.ok){
                            if(!mounted) return;
                            // deleteEmployeeBloc.add(AdminDeleteEmployeeEvent.deleteEmployee(userUid: employee.id!));
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

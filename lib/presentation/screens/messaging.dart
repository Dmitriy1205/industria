import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pandas_tableview/p_tableview.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/images.dart';
import '../../core/themes/theme.dart';
import '../../core/utils/debounce.dart';
import '../../domain/entities/employee/employee.dart';
import '../bloc/employee_feature/admin_employee_list/admin_employee_list_bloc.dart';
import '../widgets/firebase_image.dart';

class Messaging extends StatefulWidget {
  const Messaging({Key? key}) : super(key: key);

  @override
  State<Messaging> createState() => _MessagingState();
}

class _MessagingState extends State<Messaging> {
  int currentPage = 0;
  final Debouncer _debouncer = Debouncer(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    if (context.read<AdminEmployeeListBloc>().state.tableData.element.isEmpty) {
      context.read<AdminEmployeeListBloc>().add(
          const AdminEmployeeListEvent.fetchData(elementsPerPage: 7, page: 0));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.background,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          LayoutBuilder(builder: (context, constraints) {
            return constraints.maxWidth < 950
                ? Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        _tableTitle(
                            title: AppLocalizations.of(context)!.messaging,
                            subtitle: context
                                .read<AdminEmployeeListBloc>()
                                .state
                                .tableData
                                .totalElementCounts
                                .toString()),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 40,
                          child: _search(onTextChanged: (val) {
                            _debouncer.run(() {
                              context.read<AdminEmployeeListBloc>().add(
                                  AdminEmployeeListEvent.changeSearchTerm(
                                      searchTerm: val));
                            });
                          }),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: 142, right: 142),
                    child: SizedBox(
                      height: 52,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 16,
                          ),
                          _tableTitle(
                              title: AppLocalizations.of(context)!.messaging,
                              subtitle: context
                                  .read<AdminEmployeeListBloc>()
                                  .state
                                  .tableData
                                  .totalElementCounts
                                  .toString()),
                          const SizedBox(
                            width: 60,
                          ),
                          Expanded(child: _search(onTextChanged: (val) {
                            a() => context.read<AdminEmployeeListBloc>().add(
                                AdminEmployeeListEvent.changeSearchTerm(
                                    searchTerm: val));
                            print(a);
                            _debouncer.run(() {
                              context.read<AdminEmployeeListBloc>().add(
                                  AdminEmployeeListEvent.changeSearchTerm(
                                      searchTerm: val));
                            });
                          })),
                          const SizedBox(
                            width: 60,
                          ),
                        ],
                      ),
                    ),
                  );
          }),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: MediaQuery.of(context).size.width > 1350
                ? EdgeInsets.only(left: 142, right: 142)
                : EdgeInsets.symmetric(horizontal: 24),
            child: Expanded(
              child: PTableView(
                pagination: PTableViewPagination(
                  currentPage: context
                      .watch<AdminEmployeeListBloc>()
                      .state
                      .tableData
                      .currentPage,
                  pagesCount: context
                      .watch<AdminEmployeeListBloc>()
                      .state
                      .tableData
                      .numberOfPages,
                  onPageChanged: (i) {
                    context.read<AdminEmployeeListBloc>().add(
                        AdminEmployeeListEvent.fetchData(
                            page: i, elementsPerPage: 7));
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
                      width: 380,
                      child: Text(
                        AppLocalizations.of(context)!.employee.toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                    ),
                    PTableViewRowFixed(
                        width: 350,
                        child: Text(
                          AppLocalizations.of(context)!.email.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        )),
                    PTableViewRowFixed(
                        width: 120,
                        child: Text(
                          AppLocalizations.of(context)!.phone.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        )),
                  ],
                ),
                content: PTableViewContent(
                    onTap: (i) {
                      print('i');
                    },
                    divider: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    ),
                    backgroundColor: Colors.white,
                    horizontalPadding: 30,
                    columns: context
                        .watch<AdminEmployeeListBloc>()
                        .state
                        .tableData
                        .element
                        .map((e) => _employeesList(employee: e))
                        .toList()),
              ),
            ),
          )
        ],
      ),
    );
  }

  PTableViewColumn _employeesList({required Employee employee}) {
    return PTableViewColumn(rows: [
      PTableViewRowFixed(
          width: 360,
          child: SizedBox(
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FirebaseImage(
                  storageRef: employee.photoRef,
                  rounded: true,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${employee.firstname} ${employee.lastname}",
                      style: const TextStyle(fontWeight: FontWeight.w600),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ],
            ),
          )),
      PTableViewRowFixed(
          width: 345,
          child: SizedBox(
            height: 60,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              child: Text(
                employee.email,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: AppColors.darkGrey,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          )),
      PTableViewRowFixed(
          width: 150,
          child: SizedBox(
            height: 60,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              child: Text(
                employee.phoneNumber,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: AppColors.darkGrey,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          )),
      PTableViewRowFixed(
          width: 550,
          child: Padding(
            padding: const EdgeInsets.only(right: 34),
            child: SizedBox(
              height: 60,
              child: Row(
                children: [
                  const Spacer(),
                  _tableAction(
                      title: '_tableAction',
                      onTap: () async {
                        await launchUrl(Uri(
                            scheme: 'https',
                            host: 'wa.me',
                            path: employee.phoneNumber));
                      }),
                ],
              ),
            ),
          )),
    ]);
  }

  Widget _tableAction({required String title, required VoidCallback onTap}) {
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              color: AppColors.mainAccent,
            ),
            height: 32,
            width: 109,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 7),
                      child: SizedBox(
                        width: 18,
                        height: 18,
                        child: Icon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    SelectionContainer.disabled(
                      child: Text(
                        AppLocalizations.of(context)!.chat,
                        style: AppTheme.themeData.textTheme.labelMedium!
                            .copyWith(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
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
            hintStyle: const TextStyle(
              color: AppColors.darkGrey,
            ),
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

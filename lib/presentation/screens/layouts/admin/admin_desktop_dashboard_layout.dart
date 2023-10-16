
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AdminDesktopDashboardLayout extends StatelessWidget {
  final Widget child;
  final bool isLoginScreen;

  const AdminDesktopDashboardLayout(
      {Key? key, required this.child, this.isLoginScreen = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isLoginScreen ? Color(0xFFEEF3F8) : Colors.white,
      child: Row(
        children: [
          isLoginScreen
              ? Container(
                  width: 200,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.lightGrey, width: 1)),
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: _tab(
                              title: AppLocalizations.of(context)!.employee,
                              icon: FontAwesomeIcons.users,
                              isSelected: GoRouterState.of(context).fullPath ==
                                  '/admin/users',
                              onTap: () {
                                if (GoRouterState.of(context).fullPath ==
                                    '/admin/users') {
                                  return;
                                }
                                context.go('/admin/users');
                              }),
                        ),
                        _tab(
                            title: AppLocalizations.of(context)!.feedback,
                            icon: FontAwesomeIcons.bug,
                            isSelected: GoRouterState.of(context).fullPath ==
                                '/admin/feedbacks',
                            onTap: () {
                              if (GoRouterState.of(context).fullPath ==
                                  '/admin/feedbacks') {
                                return;
                              }
                              context.go('/admin/feedbacks');
                            }),
                        _tab(
                            title: AppLocalizations.of(context)!.jobApplication,
                            icon: FontAwesomeIcons.solidFileLines,
                            isSelected: GoRouterState.of(context).fullPath ==
                                '/admin/job_applications',
                            onTap: () {
                              if (GoRouterState.of(context).fullPath ==
                                  '/admin/job_applications') {
                                return;
                              }
                              context.go('/admin/job_applications');
                            }),
                        _tab(
                            title: AppLocalizations.of(context)!.vacancies,
                            icon: FontAwesomeIcons.table,
                            isSelected: GoRouterState.of(context).fullPath ==
                                '/admin/vacancies',
                            onTap: () {
                              if (GoRouterState.of(context).fullPath ==
                                  '/admin/vacancies') {
                                return;
                              }
                              context.go('/admin/vacancies');
                            }),
                        _tab(
                            title: "Holidays",
                            icon: FontAwesomeIcons.userClock,
                            isSelected: GoRouterState.of(context).fullPath ==
                                '/admin/holidays',
                            onTap: () {
                              if (GoRouterState.of(context).fullPath ==
                                  '/admin/holidays') {
                                return;
                              }
                              context.go('/admin/holidays');
                            }),
                      ],
                    ),
                  ),
                )
              : SizedBox.shrink(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 16, top: 16, right: 16),
            child: child,
          )),
        ],
      ),
    );
  }

  Widget _tab(
      {required String title,
      required IconData icon,
      bool isSelected = false,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: SelectionContainer.disabled(
          child: Container(
            height: 51,
            // margin: EdgeInsets.only(top: 11, left: 11, right: 11),
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFFD1EAFF) : Colors.transparent,
              // borderRadius: BorderRadius.circular(12)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    icon,
                    color:
                        isSelected ? AppColors.mainAccent : AppColors.darkGrey,
                    size: 17,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: isSelected
                            ? AppColors.mainAccent
                            : AppColors.darkGrey),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

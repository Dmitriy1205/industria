import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/app/router.dart';
import 'package:industria/core/constants/images.dart';
import 'package:industria/presentation/bloc/admin_auth/admin_auth_bloc.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:industria/presentation/widgets/firebase_image.dart';

import '../../../core/constants/colors.dart';
import '../../../core/themes/theme.dart';
import '../../bloc/auth/auth_bloc.dart';

class EmployeeNavbar extends StatefulWidget {
  const EmployeeNavbar({
    super.key,
  });

  @override
  State<EmployeeNavbar> createState() => _EmployeeNavbarState();
}

class _EmployeeNavbarState extends State<EmployeeNavbar> {
  bool isHovered = false;


  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.white,
      flexibleSpace: BlocListener<AuthBloc, AuthState>(
        listener: (context,state){
          state.maybeMap(
              unauthenticated: (_){
                context.go('/employees');
              },
              orElse: (){});
        },
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 14, right: 30, bottom: 14),
              child: Row(
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: (){
                        router.go('/home');
                      },
                      child: Image.asset(
                        AppImages.logo,
                        scale: 2,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Theme(
                    data: Theme.of(context).copyWith(
                      hoverColor: Colors.white,
                    ),
                    child: DropdownButton<String>(
                      focusColor: Colors.white,
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 3.0),
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 15,
                          color: AppColors.darkGrey,
                        ),
                      ),
                      underline: const SizedBox(),
                      value:
                      context.read<LocalizationBloc>().state.locale ==
                          const Locale('en')
                          ? 'ENG'
                          : 'DE',
                      borderRadius: BorderRadius.circular(10),
                      items: <String>[
                        'ENG',
                        'DE',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: AppTheme.themeData.textTheme.titleSmall!
                                .copyWith(color: const Color(0xFF575757)),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        final locale = newValue!.toLowerCase() == 'eng' ? 'en' : 'de';
                        context.read<LocalizationBloc>().add(
                            LocalizationEvent.changeLang(
                                locale: Locale(locale)));
                      },
                    ),
                  ),
                  context.watch<AuthBloc>().state.isEmployeeAuthenticated ? const SizedBox(width: 60,) : const SizedBox.shrink(),
                  context.watch<AuthBloc>().state.isEmployeeAuthenticated ? GestureDetector(
                    onTapDown: (det){
                      _showMenu(context, det.globalPosition.translate(0.0, 10.0));
                    },
                    child: SelectionContainer.disabled(
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FirebaseImage(storageRef: context.watch<AuthBloc>().state.employee!.photoRef, rounded: true,),
                            SizedBox(width: 20,),
                            SizedBox(
                              width: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(context.watch<AuthBloc>().state.employee!.firstname + " " + context.watch<AuthBloc>().state.employee!.lastname, style: TextStyle(fontSize: 14), maxLines: 1, overflow: TextOverflow.ellipsis,),
                                  Text(context.watch<AuthBloc>().state.employee!.email.split("@").first, style: TextStyle(fontSize: 14, color: AppColors.darkGrey), maxLines: 1, overflow: TextOverflow.ellipsis),
                                ],
                              ),
                            ),
                            SizedBox(width: 20,),
                            Icon(Icons.arrow_drop_down, color: AppColors.darkGrey, size: 16,),
                          ],
                        ),
                      ),
                    ),
                  ) : const SizedBox.shrink()
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(width: double.infinity, height: 3, color: AppColors.secondaryAccent,),
                Container(width: double.infinity, height: 3, color: AppColors.mainAccent,),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _showMenu(BuildContext context, Offset position) {
    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;

    showMenu(
      context: context,
      elevation: 5,
      surfaceTintColor: Colors.white,
      position: RelativeRect.fromRect(
        position & const Size(5, 0), // Rectangle size
        Offset.zero & overlay.size,  // Screen size
      ),
      items: <PopupMenuEntry>[
        PopupMenuItem(
          value: 1,
          onTap: (){
            context.read<AdminAuthBloc>().add(const AdminAuthEvent.logout());
          },
          child: Text(AppLocalizations.of(context)!.logOut, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
        ),
      ],
    );
  }
}
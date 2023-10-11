import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/app/router.dart';
import 'package:industria/core/constants/images.dart';
import 'package:industria/presentation/bloc/auth/auth_bloc.dart';
import 'package:industria/presentation/bloc/localization/localization_bloc.dart';
import 'package:industria/presentation/widgets/shapes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../core/constants/colors.dart';
import '../../../core/themes/theme.dart';

class AdminNavbar extends StatefulWidget {
  const AdminNavbar({
    super.key,
  });

  @override
  State<AdminNavbar> createState() => _AdminNavbarState();
}

class _AdminNavbarState extends State<AdminNavbar> {
  bool isHovered = false;


  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.white,
      flexibleSpace: BlocListener<AuthBloc,AuthState>(
        listener: (context,state){
          state.maybeMap(
              unauthenticated: (_){
                context.go('/admin/login');
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
                  context.watch<AuthBloc>().state.isAuthenticated ? const SizedBox(width: 60,) : const SizedBox.shrink(),
                  context.watch<AuthBloc>().state.isAuthenticated ? GestureDetector(
                    onTapDown: (det){
                      _showMenu(context, det.globalPosition.translate(0.0, 10.0));
                    },
                    child: const MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.solidUser, color: AppColors.darkGrey, size: 20,),
                          SizedBox(width: 4,),
                          Icon(Icons.arrow_drop_down, color: AppColors.darkGrey, size: 16,),
                        ],
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
            context.read<AuthBloc>().add(const AuthEvent.logout());
          },
          child: Text(AppLocalizations.of(context)!.logOut, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
        ),
      ],
    );
  }
}
/*ClipPath(
            clipper: ShapeBlue(context: context),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.mainAccent,
              ),
            ),
          ),
          ClipPath(
            clipper: ShapeYellow(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 6.5,
              decoration:
                  const BoxDecoration(color: AppColors.secondaryAccent),
            ),
          ),*/

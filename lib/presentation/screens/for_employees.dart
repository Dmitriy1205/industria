import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/extensions/validation.dart';
import 'package:industria/presentation/bloc/auth/auth_bloc.dart';

import '../../app/router.dart';
import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../../core/utils/toast.dart';
import '../widgets/app_elevated_button.dart';
import '../widgets/footer.dart';

class ForEmployees extends StatefulWidget {
  const ForEmployees({super.key});

  @override
  State<ForEmployees> createState() => _ForEmployeesState();
}

class _ForEmployeesState extends State<ForEmployees> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController(text: 'test9@example.com');

  final _passwordController = TextEditingController(text: 'testpassword');
  bool isPassObscure = true;
  bool isHoveredButton = false;
  bool isHoveredEmail = false;
  bool isHoveredPass = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context,state){
        state.maybeMap(
            authenticationFailed: (_){
              showErrorSnackBar(context, "Invalid credentials");
            },
            authenticated: (_){
              context.go('/employees/home');
            },
            orElse: (){});
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.forEmployees,
                      style: AppTheme.themeData.textTheme.headlineLarge,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: AppColors.mainAccent,
                      height: 4,
                      width: 110,
                    ),
                    const SizedBox(
                      height: 47,
                    ),
                    LayoutBuilder(
                      builder: (context,constraints) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth < 1100 ? 24 :MediaQuery.of(context).size.width / 11),
                        child: SizedBox(
                          width: 658,
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.employeeLogin,
                                    style: AppTheme.themeData.textTheme.headlineLarge!
                                        .copyWith(fontSize: 22),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Form(
                                    key: _formKey,
                                    child: AutofillGroup(
                                      child: Column(
                                        children: [
                                          MouseRegion(
                                            onEnter: (_) {
                                              setState(() {
                                                isHoveredEmail = !isHoveredEmail;
                                              });
                                            },
                                            onExit: (_) {
                                              setState(() {
                                                isHoveredEmail = !isHoveredEmail;
                                              });
                                            },
                                            child: TextFormField(
                                              controller: _emailController,
                                              style: AppTheme
                                                  .themeData.textTheme.labelSmall?.copyWith(color: Colors.black),
                                              decoration: InputDecoration(
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  borderSide: BorderSide(
                                                    color: isHoveredEmail
                                                        ? AppColors.darkGrey
                                                        : AppColors.lightGrey,
                                                  ),
                                                ),
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10, horizontal: 10),
                                                hintStyle: AppTheme
                                                    .themeData.textTheme.labelSmall,
                                                hintText: AppLocalizations.of(context)!
                                                    .userName,
                                                prefixIcon: const Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 20,
                                                    right: 10,
                                                    bottom: 10,
                                                    top: 13,
                                                  ),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.solidUser,
                                                    size: 17,
                                                    color: AppColors.darkGrey,
                                                  ),
                                                ),
                                              ),
                                              autofillHints: [AutofillHints.username],
                                              validator: context.validateEmailAddress,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          MouseRegion(
                                            onEnter: (_) {
                                              setState(() {
                                                isHoveredPass = !isHoveredPass;
                                              });
                                            },
                                            onExit: (_) {
                                              setState(() {
                                                isHoveredPass = !isHoveredPass;
                                              });
                                            },
                                            child: TextFormField(
                                              controller: _passwordController,
                                              obscureText: isPassObscure,
                                              style: AppTheme
                                                  .themeData.textTheme.labelSmall?.copyWith(color: Colors.black),
                                              decoration: InputDecoration(
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  borderSide: BorderSide(
                                                    color: isHoveredPass
                                                        ? AppColors.darkGrey
                                                        : AppColors.lightGrey,
                                                  ),
                                                ),
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10, horizontal: 10),
                                                hintText: AppLocalizations.of(context)!
                                                    .password,
                                                hintStyle: AppTheme
                                                    .themeData.textTheme.labelSmall,
                                                prefixIcon: const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20,
                                                      right: 10,
                                                      bottom: 10,
                                                      top: 12),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.lock,
                                                    size: 17,
                                                    color: AppColors.darkGrey,
                                                  ),
                                                ),
                                                suffixIcon: Padding(
                                                  padding:
                                                      const EdgeInsets.only(right: 10),
                                                  child: IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        isPassObscure = !isPassObscure;
                                                      });
                                                    },
                                                    icon: isPassObscure
                                                        ? const FaIcon(
                                                            FontAwesomeIcons
                                                                .solidEyeSlash,
                                                            size: 15,
                                                            color: AppColors.darkGrey,
                                                          )
                                                        : const FaIcon(
                                                            FontAwesomeIcons.solidEye,
                                                            size: 15,
                                                            color: AppColors.darkGrey,
                                                          ),
                                                  ),
                                                ),
                                              ),
                                              autofillHints: [AutofillHints.password],
                                              validator: (value) {
                                                if (value == null || value.isEmpty) {
                                                  return ' ${AppLocalizations.of(context)!.passwordCantBeEmpty}';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 23,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: SelectionContainer.disabled(
                                        child: GestureDetector(
                                          onTap: () {
                                            router.go('/contact');
                                          },
                                          child: Text(
                                            '${AppLocalizations.of(context)!.forgotPassword}?',
                                            style: AppTheme
                                                .themeData.textTheme.labelSmall,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                const SizedBox(
                                  height: 30,
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      router.go('/contact');
                                    },
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onEnter: (_) {
                                      setState(() {
                                        isHoveredButton = !isHoveredButton;
                                      });
                                    },
                                    onExit: (_) {
                                      setState(() {
                                        isHoveredButton = !isHoveredButton;
                                      });
                                    },
                                    child: AppElevatedButton(
                                        verticalPadding: 10,
                                        text: AppLocalizations.of(context)!.signIn,
                                        color: isHoveredButton
                                            ? AppColors.mainDarkAccent
                                            : AppColors.mainAccent,
                                        onPressed: () {
                                          if (!_formKey.currentState!.validate()) {
                                            return;
                                          }
                                          final email = _emailController.text;
                                          final password = _passwordController.text;
                                          context.read<AuthBloc>().add(AuthEvent.login(email: email, password: password));
                                          _formKey.currentState!.save();
                                        }),
                                  ))),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Center(
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: SelectionContainer.disabled(
                                        child: GestureDetector(
                                          onTap: () {
                                            router.go('/contact');
                                          },
                                          child: Text(
                                            AppLocalizations.of(context)!
                                                .ifYouDontHaveAccount,
                                            textAlign: TextAlign.center,
                                            style: AppTheme
                                                .themeData.textTheme.labelSmall,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 161,
                    ),
                  ],
                ),
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

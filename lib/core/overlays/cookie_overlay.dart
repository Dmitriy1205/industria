import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/app/router.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/enums/cookies.dart';
import 'package:industria/presentation/bloc/cookie/cookie_bloc.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';

class CookiesOverlay extends StatefulWidget {
  final bool show;

  const CookiesOverlay({Key? key, required this.show}) : super(key: key);

  @override
  State<CookiesOverlay> createState() => _CookiesOverlayState();
}

class _CookiesOverlayState extends State<CookiesOverlay> {
  bool _selected = true;

  @override
  Widget build(BuildContext context) {
    return !widget.show
        ? const SizedBox.shrink()
        : Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black.withOpacity(0.6),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 586,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(1, 3),
                              blurRadius: 8,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.25))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 40),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("We respect your privacy",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 12,
                          ),
                          RichText(
                              text: TextSpan(text: "", children: [
                            TextSpan(
                                text:
                                    "We use cookies to operate this website, remember login session.\nSee ",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(color: Colors.black)),
                            TextSpan(
                                text: "Cookies Policy",
                                mouseCursor: SystemMouseCursors.click,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    router.go('/cookie');
                                  },
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                        color: AppColors.mainDarkAccent,
                                        decoration: TextDecoration.underline)),
                          ])),
                          SizedBox(
                            height: 14,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: _selected,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  onChanged: (val) {
                                    setState(() {
                                      _selected = val!;
                                    });
                                  }),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Authentication session",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(color: Colors.black),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          _buildCookieButton(
                              text: "Accept All",
                              onPressed: () {
                                context
                                    .read<CookieBloc>()
                                    .add(CookieEvent.acceptAll());
                              }),
                          SizedBox(
                            height: 18,
                          ),
                          _buildCookieButton(
                              text: "Accept selected",
                              onPressed: () {
                                context.read<CookieBloc>().add(
                                    CookieEvent.acceptSelected(
                                        acceptedCookies: _selected
                                            ? [Cookies.authentication]
                                            : []));
                              }),
                          SizedBox(
                            height: 18,
                          ),
                          _buildCookieButton(
                              text: "Reject all",
                              onPressed: () {
                                context
                                    .read<CookieBloc>()
                                    .add(CookieEvent.denyAll());
                              },
                              dangerButton: true),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
  }

  Widget _buildCookieButton(
      {required String text,
      required VoidCallback onPressed,
      bool dangerButton = false}) {
    return AppElevatedButton(
      verticalPadding: 8,
      text: text,
      color: dangerButton ? AppColors.danger : AppColors.mainAccent,
      textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 18),
      onPressed: onPressed,
    );
  }
}

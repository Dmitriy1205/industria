import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({Key? key,
    required this.focusNode,
    required this.textController,
    required this.labelText,
    required this.validator,
    required this.textInputType,
    required this.isSavePressed,
    this.inputFormatter,
    this.width,
    this.height,
    this.maxLines,
  })
      : super(key: key);

  final FocusNode focusNode;
  final TextEditingController textController;
  final String labelText;
  final double? width;
  final double? height;
  final int? maxLines;
  final String? Function(String?) validator;
  final TextInputType textInputType;
  TextInputFormatter? inputFormatter;
  bool isSavePressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        // inputFormatters: [inputFormatter ?? inputFormatter!, FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))] ,
        keyboardType: textInputType,
        autovalidateMode: isSavePressed
            ? AutovalidateMode.onUserInteraction
            : AutovalidateMode.disabled,
        validator: validator,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        focusNode: focusNode,
        controller: textController,
        maxLines: maxLines ?? 1,
        style:
        AppTheme.themeData.textTheme.headlineLarge!.copyWith(fontSize: 14),
        decoration: InputDecoration(
          isDense: true,
          constraints: const BoxConstraints(maxHeight: 70, minHeight: 36),
          // errorBorder: OutlineInputBorder(
          //   // borderRadius: BorderRadius.circular(borderRadius),
          //   borderSide: BorderSide(
          //     color: AppColors.danger,
          //     width: 0,
          //     style: BorderStyle.solid,
          //   ),
          // ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.lightGrey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          alignLabelWithHint: true,
          labelStyle: AppTheme.themeData.textTheme.labelSmall!.copyWith(
              color: focusNode.hasFocus
                  ? AppColors.mainDarkAccent
                  : AppColors.darkGrey),
          labelText: labelText,
        ),
      ),
    );
  }
}

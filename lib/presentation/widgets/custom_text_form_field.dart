import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {Key? key,
      required this.focusNode,
      required this.textController,
      required this.labelText,
      this.width,
      this.height,
      this.maxLines})
      : super(key: key);
  final FocusNode focusNode;
  final TextEditingController textController;
  final String labelText;
  final double? width;
  final double? height;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 36,
      child: TextFormField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        focusNode: focusNode,
        controller: textController,
        maxLines: maxLines ?? 1,
        style:
            AppTheme.themeData.textTheme.headlineLarge!.copyWith(fontSize: 14),
        decoration: InputDecoration(
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

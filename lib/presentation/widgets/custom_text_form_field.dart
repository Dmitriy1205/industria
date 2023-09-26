import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vph_web_date_picker/vph_web_date_picker.dart';
import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';

enum CustomTextFormFieldType{
  standard,
  date
}
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.type = CustomTextFormFieldType.standard,
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
    this.onChange,
  }) : super(key: key);

  final CustomTextFormFieldType type;
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
  final Function(dynamic val)? onChange;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        onTap: () async{
          if(type != CustomTextFormFieldType.date){
            return;
          }
          final date = await showWebDatePicker(context: context, initialDate: DateTime.now(), width: 300);
          if(date == null){
            return;
          }
          onChange?.call(date);
        },
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
        onChanged: (v) {
          onChange!(v);
        },
        maxLines: maxLines ?? 1,
        style:
            AppTheme.themeData.textTheme.headlineLarge!.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          isDense: true,
          suffixIcon: type == CustomTextFormFieldType.date ? const Icon(FontAwesomeIcons.solidCalendarDays, color: AppColors.darkGrey,) : null,
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
              const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
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

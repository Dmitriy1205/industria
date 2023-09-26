import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants/colors.dart';

class DropdownTextFormField extends StatefulWidget {
  final List<String> variants;
  final TextEditingController controller;
  final String hintText;
  final double width;
  const DropdownTextFormField({super.key, required this.variants, required this.controller, required this.hintText, required this.width});

  @override
  State<DropdownTextFormField> createState() => _DropdownTextFormFieldState();
}

class _DropdownTextFormFieldState extends State<DropdownTextFormField> {
  final TextEditingController colorController = TextEditingController();
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<String>> colorEntries =
    <DropdownMenuEntry<String>>[];
    for (final variant in widget.variants) {
      colorEntries.add(
        DropdownMenuEntry<String>(
            value: variant, label: variant),
      );
    }

    return DropdownMenu<String>(
      width: widget.width,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        constraints: BoxConstraints(maxHeight: 40),
        labelStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
            color: AppColors.darkGrey),
      ),
      trailingIcon: Icon(FontAwesomeIcons.caretDown, size: 15, color: AppColors.darkGrey,),
      enableFilter: true,
      textStyle:
        Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
      initialSelection: widget.variants.first,
      controller: colorController,
      menuStyle: MenuStyle(
        surfaceTintColor: MaterialStatePropertyAll(Colors.white),
        elevation: MaterialStatePropertyAll(0),
        backgroundColor: MaterialStatePropertyAll(Colors.white)
      ),
      label: Text(widget.hintText, style: TextStyle(fontSize: 14),),

      dropdownMenuEntries: colorEntries,
      onSelected: (String? text) {
        setState(() {
          selectedItem = text;
        });
      },
    );
  }
}

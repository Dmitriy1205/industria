import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants/colors.dart';

class DropdownTextFormField extends FormField<String> {
  final List<String> variants;
  final TextEditingController controller;
  final Function(String?)? onChanged;
  final String hintText;
  final double width;
  final bool isSavePressed;

  DropdownTextFormField(
      {super.key,
      super.validator,
      this.onChanged,
      required this.variants,
      required this.controller,
      required this.hintText,
      required this.width,
      required this.isSavePressed})
      : super(
            autovalidateMode: isSavePressed
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            enabled: true,
            builder: (FormFieldState<String> field) {
              return UnmanagedRestorationScope(
                child: DropdownTextField(
                  controller: controller,
                  hintText: hintText,
                  width: width,
                  errorText: field.errorText,
                  variants: variants,
                  onChanged: (v) {
                    field.didChange.call(v);
                    onChanged?.call(v);
                  },
                ),
              );
            });
}

class DropdownTextField extends StatefulWidget {
  final List<String> variants;
  final TextEditingController controller;
  final Function(String?) onChanged;
  final String hintText;
  final double width;
  final String? errorText;

  const DropdownTextField(
      {super.key,
      required this.variants,
      required this.controller,
      required this.hintText,
      required this.width,
      this.errorText,
      required this.onChanged});

  @override
  State<DropdownTextField> createState() => _DropdownTextFieldState();
}

class _DropdownTextFieldState extends State<DropdownTextField> {
  String? selectedItem;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.controller.addListener(onChanged);
    });
  }

  void onChanged() {
    widget.onChanged.call(widget.controller.text);
  }

  @override
  void dispose() {
    widget.controller.removeListener(onChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<String>> colorEntries =
        <DropdownMenuEntry<String>>[];
    for (final variant in widget.variants) {
      colorEntries.add(
        DropdownMenuEntry<String>(value: variant, label: variant),
      );
    }

    return DropdownMenu<String>(
      errorText: widget.errorText,
      width: widget.width,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        constraints:
            BoxConstraints(maxHeight: 40 + (widget.errorText != null ? 24 : 0)),
        labelStyle: Theme.of(context)
            .textTheme
            .labelSmall!
            .copyWith(color: AppColors.darkGrey),
      ),
      trailingIcon: const Icon(
        FontAwesomeIcons.caretDown,
        size: 15,
        color: AppColors.darkGrey,
      ),
      enableFilter: true,
      textStyle: Theme.of(context)
          .textTheme
          .headlineLarge!
          .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
      controller: widget.controller,
      menuStyle: MenuStyle(
          maximumSize: MaterialStatePropertyAll(Size(widget.width, 200)),
          surfaceTintColor: MaterialStatePropertyAll(Colors.white),
          elevation: MaterialStatePropertyAll(0),
          backgroundColor: MaterialStatePropertyAll(Colors.white)),
      label: Text(
        widget.hintText,
        style: const TextStyle(fontSize: 14),
      ),
      dropdownMenuEntries: colorEntries,
      onSelected: (String? text) {
        widget.onChanged.call(text);
        setState(() {
          selectedItem = text;
        });
      },
    );
  }
}

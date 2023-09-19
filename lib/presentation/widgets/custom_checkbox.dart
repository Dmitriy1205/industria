import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/constants/colors.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;

  const CustomCheckbox({super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged?.call(!value);
      },
      child: Container(
        width: 26.0,
        height: 26.0,
        decoration: BoxDecoration(
          color: value ? AppColors.mainAccent :Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: value ?AppColors.mainAccent : AppColors.lightGrey,
            width: 1.5,
          ),
        ),
        child: value
            ? const Center(
          child: FaIcon(
            FontAwesomeIcons.check,
            color: Colors.white,
            size: 16,
          ),
        )
            : null,
      ),
    );
  }
}

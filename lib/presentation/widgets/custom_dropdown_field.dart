import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class CustomDropdownField<T> extends StatelessWidget {
  final List<T> items;
  final T? selectedItem;
  final ValueChanged<T?> onChanged;
  final String Function(T) displayFunction;
  final String hint;

  const CustomDropdownField({
    super.key,
    required this.items,
    required this.selectedItem,
    required this.onChanged,
    required this.displayFunction, required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.2),
        child: DropdownButton<T>(
          hint: Text(hint),
          isDense: true,
          isExpanded: true,
          icon: const Padding(
            padding: EdgeInsets.only(left: 8.0, top: 2),
            child: Icon(
              Icons.arrow_drop_down,
              size: 25,
              color: Colors.black,
            ),
          ),
          underline: const SizedBox(),
          value: selectedItem,
          borderRadius: BorderRadius.circular(10),
          items: [if (selectedItem == null) // Add the hint as the first item
        DropdownMenuItem<T>(
        value: null,
        child: Text(
          hint,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.darkGrey,
            fontSize: 14,
          ),
        ),
      ),
        ...items.map<DropdownMenuItem<T>>((T value) {
            return DropdownMenuItem<T>(
              value: value,
              child: Text(
                displayFunction(value),
                // Modify this to display the appropriate property of your object
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            );
          }).toList(),],
          onChanged: onChanged,
        ),
      ),
    );
  }
}
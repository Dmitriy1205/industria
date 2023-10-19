import 'package:flutter/services.dart';

class Validator {
  static String? validateEmail(String? value) {
    const pattern = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  }

  static String? validateNumber(String? value){
    if(value == null || int.tryParse(value) == null){
      return 'Must be a valid number';
    }
    return null;
  }

  static String? validatePhone(String? value) {
    String pattern = r'^(\+\d{1,3})?\d{8,12}$';
    RegExp regExp = RegExp(pattern);
    FilteringTextInputFormatter.digitsOnly;

    if (value!.isNotEmpty && !regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    } else {
      return null;
    }
  }

  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return "Field can't be empty";
    } else {
      return null;
    }
  }
}

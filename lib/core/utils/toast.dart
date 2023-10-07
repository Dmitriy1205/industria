import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

Future<void> showSuccessSnackBar(BuildContext context, [String? msg]) async {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.white,
      behavior: SnackBarBehavior.floating,
      content: SizedBox(
        height: 35,
        child: Row(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (Text(
              msg ?? 'Successfully sent',
              style: const TextStyle(color: Colors.black),
            )),
          ],
        ),
      ),
      duration: const Duration(seconds: 3),
    ),
  );
}

Future<void> showErrorSnackBar(BuildContext context, String errorMessage) async {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColors.danger,
      behavior: SnackBarBehavior.floating,
      content: Text(
        'Error: $errorMessage',
        style: const TextStyle(color: Colors.white),
      ),
      duration: const Duration(seconds: 3),
    ),
  );
}

void showProgressSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    backgroundColor: Colors.white,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
      side: BorderSide.none,
    ),
    content: SizedBox(
      height: 35,
      child: Row(
        children: [
          CircularProgressIndicator(color: AppColors.mainAccent),
          SizedBox(width: 20),
          Text(
            'Data sending in progress..',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    ),
    duration: Duration(seconds: 60),
  ));
}
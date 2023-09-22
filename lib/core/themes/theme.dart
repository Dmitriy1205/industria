import 'package:flutter/material.dart';
import 'package:industria/core/constants/colors.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    // dividerColor: const Color(0xFFC7ED3A),
    cardTheme: const CardTheme(surfaceTintColor: Color(0xFFFFFFFF)),
    colorScheme: ThemeData().colorScheme.copyWith(
      primary: const Color(0xFFF2F2F2),
      background: const Color(0xFFF2F2F2),
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: Color(0xFFFFFFFF),
      surfaceTintColor: Color(0xFFFFFFFF),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith((states){
        if(states.contains(MaterialState.selected)){
          return AppColors.mainAccent;
        }else{
          return Colors.transparent;
        }
      }),
      shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(5)
      ),
      side: BorderSide(
        color: AppColors.lightGrey,
      )
    ),
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    textSelectionTheme:
    const TextSelectionThemeData(cursorColor: Color(0xFF2976B6)),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(color:Color(0xFF474D4C) ),
      prefixIconColor:const Color(0xFF474D4C)  ,
      focusColor: const Color(0xFF474D4C),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFEDEDED)
          )),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          width: 2,
          color: Color(0xFF2976B6),
        ),
      ),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFFC4445),
          )),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFFC4445),
          )),
    ),
    useMaterial3: true,
    fontFamily: 'OpenSans',
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 36,
        color: Color(0xFF091312),
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: Color(0xFFF2F2F2),
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: Color(0xFFF2F2F2),
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: Color(0xFF091312),
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: Color(0xFF091312),
      ),
      bodySmall: TextStyle(color: Color(0xFF091312)),
      displayMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
        color:  Color(0xFF091312),
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Color(0xFFF2F2F2),
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Color(0xFF091312),
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: Color(0xFF8B8B8B),
      ),
    ),
  );
}

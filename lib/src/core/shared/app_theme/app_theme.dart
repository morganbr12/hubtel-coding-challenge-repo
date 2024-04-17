import 'package:flutter/material.dart';

class AppTheme {
  static theme() => ThemeData().copyWith(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            fontFamily: 'Matter',
            fontWeight: FontWeight.w700,
          ),
          titleMedium: TextStyle(
            fontSize: 17,
            fontFamily: 'Matter',
            fontWeight: FontWeight.w500,
          ),
          titleSmall: TextStyle(
            fontSize: 15,
            fontFamily: 'Matter',
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Matter',
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          bodyMedium: TextStyle(
            fontFamily: "Matter",
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      );
}

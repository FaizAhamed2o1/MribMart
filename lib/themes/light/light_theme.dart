import 'package:flutter/material.dart';

final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
);

final textFieldTheme = InputDecorationTheme(
  hintStyle: TextStyle(
    color: Colors.grey.shade500,
  ),

  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey.shade400,
      width: 1.5,
    ),
  ),
  filled: true,
  fillColor: Colors.grey.shade200,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  ),

  //labelStyle: TextStyle(fontSize: 35, decorationColor: Colors.red),
);

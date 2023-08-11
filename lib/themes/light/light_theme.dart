import 'package:flutter/material.dart';

ThemeData light({Color color = const Color(0xFFFF9000)}) => ThemeData(
      useMaterial3: true,
      //fontFamily: 'Poppins',
      primaryColor: color,

      secondaryHeaderColor: const Color(0xFF2E2E2E),
      disabledColor: const Color(0xFFBABFC4),
      //colorSchemeSeed: const Color(0xFFE84D4F),
      brightness: Brightness.light,
      hintColor: const Color(0xFF9F9F9F),
      cardColor: Colors.white,
      canvasColor: const Color(0xffFFF9F3),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: color)),
      colorScheme: ColorScheme.light(primary: color, secondary: color)
          .copyWith(background: const Color(0xFFFFF3E0)),

      elevatedButtonTheme: elevatedButtonTheme,
      inputDecorationTheme: textFieldTheme,
    );

final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    minimumSize: const Size(double.infinity, 0),
  ),
);

// ThemeData get lightTheme => ThemeData(
//       primarySwatch: Colors.blue,
//       //useMaterial3: true,

//     );
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

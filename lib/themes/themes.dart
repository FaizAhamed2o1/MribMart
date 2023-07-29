import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'light/light_theme.dart';

ThemeData get lightTheme => ThemeData(
      // primarySwatch: Colors.indigo,
      //useMaterial3: true,
      textTheme: GoogleFonts.poppinsTextTheme().copyWith(
        bodyMedium: GoogleFonts.oswald(),
      ),
      elevatedButtonTheme: elevatedButtonTheme,
      inputDecorationTheme: textFieldTheme,
    );

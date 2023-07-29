import 'package:flutter/material.dart';

import '../themes.dart';

ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.blue,
      //useMaterial3: true,
      elevatedButtonTheme: elevatedButtonTheme,
      inputDecorationTheme: textFieldTheme,
    );

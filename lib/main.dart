import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/pages/splash_screen/splash_screen.dart';
import 'package:mribmart/themes/provider/theme_provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var darkMode = ref.watch(darkModeProvider);
    return Sizer(builder: (context, _, __) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        //themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
        theme: darkMode ? ThemeData.dark() : ThemeData.light(),
        home: const SplashScreen(),
      );
    });
  }
}

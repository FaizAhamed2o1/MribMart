import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/routing/app_router.dart';
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
    var darkMode = ref.watch(darkProvider).value ?? false;
    return Sizer(builder: (context, _, __) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        //themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
        theme: darkMode ? ThemeData.dark() : ThemeData.light(),
        routerConfig: router,
      );
    });
  }
}

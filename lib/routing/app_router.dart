import 'package:go_router/go_router.dart';
import 'package:mribmart/pages/intro_screen/intro_screen.dart';
import 'package:mribmart/pages/login_screen/view/login_screen.dart';
import 'package:mribmart/pages/splash_screen/splash_screen.dart';

enum AppRoute {
  home,
  splash,
  introScreen,
  logIn,
}

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    name: AppRoute.splash.name,
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
      path: "/intro",
      name: AppRoute.introScreen.name,
      builder: (context, state) => const IntroScreen(),
      routes: [
        GoRoute(
          path: "login",
          name: AppRoute.logIn.name,
          builder: (context, state) => const LoginScreen(),
        ),
      ]),
]);

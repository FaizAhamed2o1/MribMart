import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../intro_screen/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const IntroScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_screen_bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2,
              sigmaY: 1,
            ),
            child: Center(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Center(
                  child: SvgPicture.asset('assets/images/grab-2.svg'),
                ),
              )
                  .animate(
                      onPlay: (controller) =>
                          controller.loop(count: 2, reverse: true))
                  .shimmer(delay: 400.ms, duration: 1800.ms)
                  .shake(hz: 4, curve: Curves.easeInOutCubic)
                  .scaleXY(end: 1.1, duration: 600.ms)
                  .then(delay: 600.ms)
                  .scaleXY(end: 1 / 1.1)
                  .then(delay: 200.ms),
            ),
          ),
        ),
      ),
    );
  }
}

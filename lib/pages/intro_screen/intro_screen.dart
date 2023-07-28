import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mribmart/pages/login_screen/view/login_screen.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage('assets/images/intro_image_bg.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black54.withOpacity(0.6),
                BlendMode.darken,
              )),
        ),

        // for background image blur
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2.0,
              sigmaY: 2.0,
            ),

            //content container
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //header text
                  const Text(
                    'Explore, Discover, Choose.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ).animate().fadeIn(delay: 300.ms, duration: 600.ms),

                  const SizedBox(
                    height: 12,
                  ),

                  // short description text
                  Text(
                    'Explore your curiosity. Discover your interest. Choose your needs.',
                    style: TextStyle(
                      color: Colors.white.withAlpha(220),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                      .animate()
                      .then(delay: 800.ms)
                      .fadeIn(delay: 300.ms, duration: 600.ms),

                  const SizedBox(
                    height: 20,
                  ),

                  // let's go button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      minimumSize: const Size(double.infinity, 0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        'Let\'s Go!',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )
                      .animate()
                      .then(delay: 1500.ms)
                      .fadeIn(delay: 300.ms, duration: 600.ms)
                      .shimmer(color: Colors.black45, duration: 800.ms),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

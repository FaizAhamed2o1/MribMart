import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mribmart/pages/home/view/home.dart';
import 'package:mribmart/pages/login_screen/provider/login_screen_provider.dart';

import 'package:mribmart/common/widgets/sign_in_registration_button.dart';
import 'package:sizer/sizer.dart';

import '../../../common/provider/root_provider.dart';
import '../../../common/widgets/square_tile.dart';
import '../../../routing/app_router.dart';
import '../../signup_screen/view/signup_screen.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // FocusNode myFocusNode1 = FocusNode();
    // FocusNode myFocusNode2 = FocusNode();
    final loginFormKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 1.5.h, right: 1.5.h),
          children: [
            //login logo
            SizedBox(
              height: 2.5.h,
            ),
            Icon(
              Icons.lock,
              size: 12.h,
            ),

            SizedBox(
              height: 5.h,
            ),

            //welcome text
            Text(
              'Welcome back!',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),

            //email text field
            // LoginRegistrationTextField(
            //   controller: emailController,
            //   leftLogo: const Icon(Icons.mail_outlined),
            //   hintText: 'E-mail',
            //   obscureText: false,
            // ),
            // const SizedBox(
            //   height: 15,
            // ),

            // //password text field
            // LoginRegistrationTextField(
            //   leftLogo: const Icon(Icons.key_outlined),
            //   rightLogo: IconButton(
            //     onPressed: toggleView,
            //     icon: isObscure
            //         ? const Icon(Icons.visibility_off_outlined)
            //         : const Icon(Icons.visibility_outlined),
            //   ),
            //   controller: passwordController,
            //   hintText: 'Password',
            //   obscureText: isObscure,
            // ),

            //     (value) {
            //   if (value!.isEmpty) {
            //     return 'Please enter an Email address';
            //   } else if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$')
            //       .hasMatch(value)) {
            //     return "Enter a valid Email address";
            //   } else {
            //     return null;
            //   }
            // }

            Form(
              key: loginFormKey,
              child: Column(
                children: [
                  //email text form field
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter an Email address';
                      } else if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return "Enter a valid Email address";
                      } else {
                        return null;
                      }
                    },
                    controller: ref.watch(
                      textControllerProvider('log_in_email'),
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.mail_outlined,
                        color: Colors.grey.shade700,
                      ),

                      //hintText: hintText,
                      hintText: 'xyz@gmail.com',
                      labelText: 'Email',
                      floatingLabelStyle: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 2.h,
                        fontWeight: FontWeight.w700,
                      ),
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
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),

                  // password text form field
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 6) {
                        return 'Password is too short';
                      } else {
                        return null;
                      }
                    },
                    controller: ref.watch(
                      textControllerProvider('log_in_password'),
                    ),
                    obscureText: ref.watch(obscureProvider),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.grey.shade700,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          ref.read(obscureProvider.notifier).state =
                              !ref.watch(obscureProvider);
                        },
                        icon: ref.watch(obscureProvider)
                            ? const Icon(Icons.visibility_off_outlined)
                            : const Icon(Icons.visibility_outlined),
                      ),

                      //hintText: hintText,
                      hintText: 'Enter at least 6 digit password',
                      labelText: 'Password',
                      floatingLabelStyle: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 2.h,
                        fontWeight: FontWeight.w700,
                      ),
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
                    ),
                  ),

                  SizedBox(
                    height: 1.5.h,
                  ),

                  // forgot password text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Ink(
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),

                  // sign in button
                  SigninRegistrationButton(
                    validationFuncton: () {
                      if (loginFormKey.currentState!.validate()) {
                        GoRouter.of(context).goNamed(AppRoute.bottomNav.name);
                      }
                    },
                    text: 'Log in',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 7.h,
            ),

            // or continue with text
            Row(
              children: [
                // divider
                Expanded(
                  child: Divider(
                    thickness: 0.7,
                    color: Colors.grey.shade400,
                  ),
                ),

                // text
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  child: Text(
                    'Or continue with',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),

                // divider
                Expanded(
                  child: Divider(
                    thickness: 0.7,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6.h,
            ),

            // google and facebook logo in square tile
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // google button
                const SquareTile(imagePath: 'assets/images/google_logo.png'),

                SizedBox(width: 5.w),

                // apple button
                const SquareTile(imagePath: 'assets/images/facebook_logo.png')
              ],
            ),
            SizedBox(
              height: 3.h,
            ),

            // not registered? signup
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupScreen(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                  ),
                  child: const Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

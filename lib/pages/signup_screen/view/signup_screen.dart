import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mribmart/pages/login_screen/view/login_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/pages/signup_screen/provider/signup_screen_provider.dart';
import 'package:mribmart/common/provider/root_provider.dart';
import '../../../common/widgets/sign_in_registration_button.dart';
import '../../../routing/app_router.dart';

class SignupScreen extends ConsumerWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupFormkey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 1.5.h),
          children: [
            SizedBox(
              height: 2.5.h,
            ),
            // register text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SIGN UP',
                  style:
                      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            SizedBox(
              height: 5.h,
            ),

            //welcome text
            Text(
              'Welcome. Let\'s get you signed up!',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),

            Form(
              key: signupFormkey,
              child: Column(
                children: [
                  // username text form field
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      } else {
                        return null;
                      }
                    },
                    controller: ref.watch(
                      textControllerProvider('signup_userName'),
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_2_outlined,
                        color: Colors.grey.shade700,
                      ),

                      //hintText: hintText,
                      hintText: 'John Doe',
                      labelText: 'Username',
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
                      textControllerProvider('signup_email'),
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
                      textControllerProvider('signup_password'),
                    ),
                    obscureText: ref.watch(obscureProviderSignup),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.grey.shade700,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          ref.read(obscureProviderSignup.notifier).state =
                              !ref.watch(obscureProviderSignup);
                        },
                        icon: ref.watch(obscureProviderSignup)
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

                  // forgot password text

                  SizedBox(
                    height: 5.h,
                  ),

                  // sign in button
                  SigninRegistrationButton(
                    validationFuncton: () {
                      if (signupFormkey.currentState!.validate()) {
                        GoRouter.of(context)
                            .pushNamed(AppRoute.emailVerificationPage.name);
                      }
                    },
                    text: 'Sign up',
                  ),

                  SizedBox(
                    height: 3.h,
                  ),

                  // not registered? signup
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already a member?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        child: const Text(
                          'Login',
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
          ],
        ),
      ),
    );
  }
}

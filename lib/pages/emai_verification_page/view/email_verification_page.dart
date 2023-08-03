import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../common/provider/root_provider.dart';
import '../../../common/widgets/sign_in_registration_button.dart';
import '../../../routing/app_router.dart';

class EmailVerificationPage extends ConsumerWidget {
  const EmailVerificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailVerificationFormkey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 2.5.h),
          children: [
            SizedBox(
              height: 8.h,
            ),
            //
            SizedBox(
              height: 20.h,
              child: Image.asset('assets/images/email.png'),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            // register text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'VERIFY E-MAIL',
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
              'Enter the code to verify your email',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Form(
              key: emailVerificationFormkey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the verification code';
                      } else {
                        return null;
                      }
                    },
                    controller: ref.watch(
                      textControllerProvider('email_verification_controller'),
                    ),
                    decoration: InputDecoration(
                      //hintText: hintText,

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
                    height: 5.h,
                  ),

                  // sign in button
                  SigninRegistrationButton(
                    validationFuncton: () {
                      if (emailVerificationFormkey.currentState!.validate()) {
                        GoRouter.of(context)
                            .pushReplacementNamed(AppRoute.bottomNav.name);
                      }
                    },
                    text: 'Verify',
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

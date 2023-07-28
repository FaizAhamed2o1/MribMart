import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SigninRegistrationButton extends StatelessWidget {
  const SigninRegistrationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.h,
      width: 100.w,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 0),
        ),
        child: Text(
          'Sign in',
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/pages/login_screen/provider/login_screen_provider.dart';
import 'package:sizer/sizer.dart';

class SigninRegistrationButton extends ConsumerWidget {
  final VoidCallback validationFuncton;
  final String text;
  final bool flag;
  SigninRegistrationButton(
      {super.key,
      required this.validationFuncton,
      required this.text,
      required this.flag});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 8.h,
      width: 100.w,
      child: TextButton(
        onPressed: validationFuncton,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 0),
        ),
        child: ref.watch(loginLoadingProvider) == true
            ? CircularProgressIndicator()
            : Text(
                text,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}

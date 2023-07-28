import 'package:flutter/material.dart';

class SigninRegistrationButton extends StatelessWidget {
  const SigninRegistrationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 0),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Text(
          'Sign in',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

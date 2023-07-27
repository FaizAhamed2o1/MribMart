// import 'dart:async';

import 'package:flutter/material.dart';

class LoginRegistrationTextField extends StatelessWidget {
  final Widget leftLogo;
  final controller;
  final String hintText;
  final bool obscureText;
  final Widget? rightLogo;
  const LoginRegistrationTextField({
    super.key,
    required this.leftLogo,
    this.rightLogo,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: leftLogo,
          suffixIcon: rightLogo,
          hintText: hintText,
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
    );
  }
}

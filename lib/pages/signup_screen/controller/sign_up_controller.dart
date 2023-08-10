import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/pages/signup_screen/model/sign_up_model.dart';
import 'package:http/http.dart' as http;
import 'package:mribmart/utils/app_url.dart';

class ApiServiceSignUp {
  Future<SignUpModel> getSignUpData(String name , String mail , String password) async {
    http.Response response;

    response = await http.post(Uri.parse(signupApi), body: <String, String>{
    "name": name,
    "email": mail,
    "password": password
    });

    if (response.statusCode == 200) {
      var body = response.body;

      debugPrint(body);

      return SignUpModel.fromJson(jsonDecode(body));
    } else {
      throw Exception('Failed to load');
    }
  }
}

final signUpProvider =
    Provider<ApiServiceSignUp>((ref) => ApiServiceSignUp());


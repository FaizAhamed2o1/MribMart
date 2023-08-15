import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mribmart/pages/login_screen/model/login_model.dart';
import 'package:http/http.dart' as http;
import 'package:mribmart/utils/app_url.dart';

import '../../../routing/app_router.dart';

class ApiServiceLogin {
  Future<LoginModel?> getLoginData(
      {required String email,
      required String password,
      required BuildContext context}) async {
    http.Response response;

    response = await http.post(Uri.parse(loginApi),
        body: <String, String>{"email": email, "password": password});

    if (response.statusCode == 200) {
      var body = response.body;

      debugPrint(body);

      GoRouter.of(context).goNamed(AppRoute.bottomNav.name);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('LogIn Successfully')));

      return LoginModel.fromJson(jsonDecode(body));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Email or password not correct')));
      return null;
      //throw Exception('Failed to load');
    }
  }
}

final loginProvider = Provider<ApiServiceLogin>((ref) => ApiServiceLogin());

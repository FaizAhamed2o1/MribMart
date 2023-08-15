import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/app_router.dart';
import '../../../utils/app_url.dart';
import '../controller/sign_up_controller.dart';
import '../model/sign_up_model.dart';

import 'package:http/http.dart' as http;

final obscureProviderSignup = StateProvider<bool>((ref) {
  return true;
});

// final signUpDataProvider = FutureProvider<SignUpModel>((ref) {
//   // void postSignupData (){

//   //   return ref.watch(signUpProvider).getSignUpData();
//   // }

//   // return ref.watch(signUpProvider);

//   return ref.watch(signUpProvider).getSignUpData('d', 'd', 'd');
// });

final signupDataProvider =
    StateNotifierProvider<AuthNotifierProviderSignup, ApiServiceSignUp>((ref) {
  return AuthNotifierProviderSignup(ref.watch(signUpProvider));
});

class AuthNotifierProviderSignup extends StateNotifier<ApiServiceSignUp> {
  //final ApiServiceSignUp _apiServiceSignUp;

  AuthNotifierProviderSignup(super.state);

  signUp(
      {required String username,
      required String email,
      required String password,
      required BuildContext context}) async {
    try {
      //final SharedPreferences prefs = await SharedPreferences.getInstance();
      http.Response response;

      response = await http.post(Uri.parse(signupApi), body: <String, String>{
        "name": username,
        "email": email,
        "password": password
      });

      if (response.statusCode == 201) {
        var body = response.body;

        GoRouter.of(context).pushNamed(AppRoute.logIn.name);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Signup Successfully')));

        return SignUpModel.fromJson(jsonDecode(body));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('wrong username or password')));

        throw Exception('Failed to load');
      }

      // await ApiServiceSignUp()
      //     .getSignUpData(name: username, mail: email, password: password);
    } catch (e) {
      print(e);
    }
  }
}

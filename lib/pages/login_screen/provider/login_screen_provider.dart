import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/pages/login_screen/controller/login_screen_controller.dart';

final obscureProvider = StateProvider<bool>((ref) {
  return true;
});

final toggleProvider = StateProvider<bool>((ref) {
  return true;
});

final logindataProvider =
    StateNotifierProvider<AuthNotifierProviderLogin, ApiServiceLogin>((ref) {
  return AuthNotifierProviderLogin(ref.watch(loginProvider));
});

class AuthNotifierProviderLogin extends StateNotifier<ApiServiceLogin> {
  AuthNotifierProviderLogin(
    super.state,
  );

  Future<void> login(
      {required String name,
      required String password,
      required BuildContext context}) async {
    await ApiServiceLogin()
        .getLoginData(email: name, password: password, context: context);
  }
}

final loginLoadingProvider = StateProvider<bool>((ref) {
  return false;
});

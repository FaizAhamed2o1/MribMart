import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/pages/signup_screen/model/sign_up_model.dart';

import '../controller/sign_up_controller.dart';

final obscureProviderSignup = StateProvider<bool>((ref) {
  return true;
});


// final signUpDataProvider = FutureProvider<SignUpModel>((ref)  {
  
//   // void postSignupData (){

//   //   return ref.watch(signUpProvider).getSignUpData();
//   // }

  
//   return ref.watch(signUpProvider);
  
//  //return ref.watch(signUpProvider).getSignUpData();
// });

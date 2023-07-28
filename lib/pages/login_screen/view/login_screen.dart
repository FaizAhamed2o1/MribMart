import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mribmart/pages/login_screen/provider/login_screen_provider.dart';
import 'package:mribmart/utils/app_sizer.dart';
import 'package:mribmart/common/widgets/sign_in_registration_button.dart';
import 'package:sizer/sizer.dart';

import '../../../common/widgets/square_tile.dart';
import '../../provider/root_provider.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   bool isObscure = true;
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   void toggleView() {
//     setState(() {
//       isObscure = !isObscure;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 //login logo
//                 const Icon(
//                   Icons.lock,
//                   size: 100,
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),

//                 //welcome text
//                 Text(
//                   'Welcome back!',
//                   style: TextStyle(
//                     color: Colors.grey[800],
//                     fontSize: 16,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 25,
//                 ),

//                 //email text field
//                 LoginRegistrationTextField(
//                   controller: emailController,
//                   leftLogo: const Icon(Icons.mail_outlined),
//                   hintText: 'E-mail',
//                   obscureText: false,
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),

//                 //password text field
//                 LoginRegistrationTextField(
//                   leftLogo: const Icon(Icons.key_outlined),
//                   rightLogo: IconButton(
//                     onPressed: toggleView,
//                     icon: isObscure
//                         ? const Icon(Icons.visibility_off_outlined)
//                         : const Icon(Icons.visibility_outlined),
//                   ),
//                   controller: passwordController,
//                   hintText: 'Password',
//                   obscureText: isObscure,
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),

//                 // forgot password text
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Text(
//                         'Forgot Password?',
//                         style: TextStyle(
//                           color: Colors.grey.shade800,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 25,
//                 ),

//                 // sign in button
//                 Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 20),
//                   child: const SigninRegistrationButton(),
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),

//                 // or continue with text
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: Row(
//                     children: [
//                       // divider
//                       Expanded(
//                         child: Divider(
//                           thickness: 0.7,
//                           color: Colors.grey.shade400,
//                         ),
//                       ),

//                       // text
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                         child: Text(
//                           'Or continue with',
//                           style: TextStyle(
//                             color: Colors.grey.shade800,
//                           ),
//                         ),
//                       ),

//                       // divider
//                       Expanded(
//                         child: Divider(
//                           thickness: 0.7,
//                           color: Colors.grey.shade400,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),

//                 // google and facebook logo in square tile
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     // google button
//                     SquareTile(imagePath: 'assets/images/google_logo.png'),

//                     SizedBox(width: 25),

//                     // apple button
//                     SquareTile(imagePath: 'assets/images/facebook_logo.png')
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 25,
//                 ),

//                 // not registered? signup
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Not a member?',
//                       style: TextStyle(color: Colors.grey[700]),
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         // push to register page
//                         // Navigator.pushReplacement(
//                         //   context,
//                         //   MaterialPageRoute(
//                         //     builder: (context) => SignupScreen(),
//                         //   ),
//                         // );
//                       },
//                       style: TextButton.styleFrom(
//                         backgroundColor: Colors.transparent,
//                       ),
//                       child: const Text(
//                         'Register now',
//                         style: TextStyle(
//                           color: Colors.blueAccent,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(left: 10, right: 10),
          children: [
            //login logo
            const Icon(
              Icons.lock,
              size: 100,
            ),

            gapH32,

            //welcome text
            Text(
              'Welcome back!',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            //email text field
            // LoginRegistrationTextField(
            //   controller: emailController,
            //   leftLogo: const Icon(Icons.mail_outlined),
            //   hintText: 'E-mail',
            //   obscureText: false,
            // ),
            // const SizedBox(
            //   height: 15,
            // ),

            // //password text field
            // LoginRegistrationTextField(
            //   leftLogo: const Icon(Icons.key_outlined),
            //   rightLogo: IconButton(
            //     onPressed: toggleView,
            //     icon: isObscure
            //         ? const Icon(Icons.visibility_off_outlined)
            //         : const Icon(Icons.visibility_outlined),
            //   ),
            //   controller: passwordController,
            //   hintText: 'Password',
            //   obscureText: isObscure,
            // ),

            TextFormField(
              controller: ref.watch(textControllerProvider('log_in')),
              obscureText: ref.watch(obscureProvider),
              decoration: InputDecoration(
                //prefixIcon: leftLogo,
                suffixIcon: IconButton(
                    onPressed: () {
                      ref.read(obscureProvider.notifier).state =
                          !ref.watch(obscureProvider);
                    },
                    icon: ref.watch(obscureProvider)
                        ? const Icon(Icons.visibility_off_outlined)
                        : const Icon(Icons.visibility_outlined)),

                //hintText: hintText,
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

            const SizedBox(
              height: 10,
            ),

            // forgot password text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            // sign in button
            Container(
              //margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const SigninRegistrationButton(),
            ),
            const SizedBox(
              height: 50,
            ),

            // or continue with text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  // divider
                  Expanded(
                    child: Divider(
                      thickness: 0.7,
                      color: Colors.grey.shade400,
                    ),
                  ),

                  // text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),

                  // divider
                  Expanded(
                    child: Divider(
                      thickness: 0.7,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),

            // google and facebook logo in square tile
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // google button
                SquareTile(imagePath: 'assets/images/google_logo.png'),

                SizedBox(width: 25),

                // apple button
                SquareTile(imagePath: 'assets/images/facebook_logo.png')
              ],
            ),
            const SizedBox(
              height: 25,
            ),

            // not registered? signup
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                TextButton(
                  onPressed: () {
                    // push to register page
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const SignupScreen(),
                    //   ),
                    // );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                  ),
                  child: const Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            Text(
              'data',
              style: TextStyle(fontSize: 10.sp),
            )
          ],
        ),
      ),
    );
  }
}

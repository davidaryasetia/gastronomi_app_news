import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_animate/extensions/extensions.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/auth/login/auth_controller.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _validatePassword = true;
  bool _validateEmail = true;
  bool obsecureText = true;
  var lc = Get.put(AuthController());
  var c = Get.put(GlobalController());

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(children: [
      Container(
        color: const Color(0xff1B1919),
      ),
      currentWidth < 600
          ? Positioned(
              bottom: -100,
              right: 0,
              child: Image.asset(
                "assets/images/img_bg_login.png",
                width: 400,
                height: 400,
              ),
            )
          : Positioned(
              bottom: 0,
              right: 80,
              child: Image.asset(
                "assets/images/img_bg_login.png",
              ),
            ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Gastronomi Lombok")
                .orelega60s()
                .white()
                .animate()
                .fadeIn(delay: 300.ms, duration: 500.ms)
                .then() // sets own delay to 800ms (300+500)
                .slide(duration: 400.ms), // inherits the 800ms delay
            SizedBox(
              height: 20,
            ),
            const Text("Hi there!")
                .orelega50s()
                .white()
                .animate()
                .fadeIn(delay: 300.ms, duration: 500.ms)
                .then() // sets own delay to 800ms (300+500)
                .slide(duration: 400.ms), // inherits the 800ms delay

            SizedBox(
              height: 10,
            ),
            const Text("Have we meet Before ?")
                .orelega25s()
                .white()
                .animate()
                .fadeIn(delay: 300.ms, duration: 500.ms)
                .then() // sets own delay to 800ms (300+500)
                .slide(duration: 400.ms), // inherits the 800ms delay,
            SizedBox(
              height: 40,
            ),
            const Text("Email")
                .orelega20s()
                .white()
                .animate()
                .fadeIn(delay: 300.ms, duration: 500.ms)
                .then() // sets own delay to 800ms (300+500)
                .slide(duration: 400.ms), // inherits the 800ms delay,
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 471,
              height: 60,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  errorText: _validateEmail ? null : 'Email Can\'t Be Empty',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.white),
                  counterText: '0 characters',
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 3)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 3)),
                  disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 3)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 3),
                  ),
                ),
              ),
            ),
            const Text("Password")
                .orelega20s()
                .white()
                .animate()
                .fadeIn(delay: 300.ms, duration: 500.ms)
                .then() // sets own delay to 800ms (300+500)
                .slide(duration: 400.ms), // inherits the 800ms delay,
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 471,
              height: 60,
              child: TextField(
                style: const TextStyle(color: Colors.white),
                controller: passwordController,
                obscureText: obsecureText,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obsecureText = !obsecureText;
                        });
                      },
                      child: Icon(
                        obsecureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.white,
                      )),
                  hintText: 'Password',
                  errorText: _validatePassword ? null : 'Password Can\'t Be Empty',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.white),
                  counterText: '0 characters',
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 3)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 3)),
                  disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 3)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 3),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            OnHoverButton(
              child: BaseButton(
                width: 471,
                height: 50,
                color: OPrimaryColor,
                outlineRadius: 30,
                textSize: 20,
                ontap: () {
                  bool isEmail = c.isEmail(emailController.text);
                  if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
                    if (isEmail) {
                      // print(emailController.text);
                      // print(passwordController.text);
                      lc.email = emailController.text;
                      lc.password = passwordController.text;
                      // print(lc.email);
                      // print(lc.password);
                      // Get.offAll(HomePage());

                      lc.login(context);
                      // service.login();
                      // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      //   content: Text('Login Success'),
                      //   backgroundColor: Colors.black87,
                      // ));
                      // c.isLogin.value = true;
                      // Get.offAll(HelloConvexAppBar());

                      //==============================================================================================================================================
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Please fill correct Email'),
                        backgroundColor: Colors.black87,
                      ));
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Please Fill in the blank'),
                      backgroundColor: Colors.black87,
                    ));
                  }
                  // Get.to(HomePage());
                  // }
                },
                text: "Login",
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 471,
              child: Row(
                children: [
                  // Divider(),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.white, width: 1))),
                    ),
                  ),
                  const Text("OR").nunito20s().white(),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.white, width: 1))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            OnHoverButton(
              child: BaseButton(
                width: 471,
                height: 50,
                color: OThirdColor,
                outlineRadius: 30,
                textSize: 20,
                // outlineColor: Colors.white,
                // image: "assets/images/img_google.png",
                ontap: () {
                  // Get.to(const RegisterPage());
                  // cLogin.loginWithGoogle();
                },
                text: "Register",
              ),
            ),
            // SizedBox(height:   20),
            // OnHoverButton(
            //   child: const Text(
            //     "Forgot my password",
            //     style: TextStyle(
            //       decoration: TextDecoration.underline,
            //     ),
            //   )
            //       .nunito20b()
            //       .white()
            //       .animate()
            //       .fadeIn(delay: 300.ms, duration: 500.ms)
            //       .then() // sets own delay to 800ms (300+500)
            //       .slide(duration: 400.ms), // inherits the 800ms delay,
            // ),
            // SizedBox(height:   20),
            // OnHoverButton(
            //   child: GestureDetector(
            //     onTap: () {
            //       Get.to(const RegisterPage());
            //     },
            //     child: RichText(
            //       text: TextSpan(
            //         text: 'Don have an account ? ',
            //         style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
            //         children: <TextSpan>[
            //           TextSpan(
            //             text: 'Sign Up',
            //             style: GoogleFonts.nunito(
            //               fontSize: 20,
            //               fontWeight: FontWeight.w700,
            //               color: Colors.white,
            //               decoration: TextDecoration.underline,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      )
    ]));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/auth/login/auth_controller.dart';
import 'package:gastronomy/page/auth/login/login_page.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool _validatePassword = true;
  bool _validateEmail = true;
  bool _validateConfirmPassword = true;
  bool obsecureText = true;
  bool obsecureConfirmText = true;
  var lc = Get.put(AuthController());
  var c = Get.put(GlobalController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        color: const Color(0xff1B1919),
      ),
      Positioned(
        bottom: 0,
        right: 80,
        child: Image.asset("assets/images/img_bg_login.png"),
      ),
      SingleChildScrollView(
        child: Column(
          children: [
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
                      .slide(duration: 400.ms),
                  SizedBox(
                    height: 10,
                  ),
                  const Text("Hi there!")
                      .orelega50s()
                      .white()
                      .animate()
                      .fadeIn(delay: 300.ms, duration: 500.ms)
                      .then() // sets own delay to 800ms (300+500)
                      .slide(duration: 400.ms),
                  SizedBox(
                    height: 10,
                  ),
                  const Text("Get started with your free account today.")
                      .orelega25s()
                      .white()
                      .animate()
                      .fadeIn(delay: 300.ms, duration: 500.ms)
                      .then() // sets own delay to 800ms (300+500)
                      .slide(duration: 400.ms),
                  SizedBox(
                    height: 30,
                  ),
                  const Text("Username")
                      .orelega20s()
                      .white()
                      .animate()
                      .fadeIn(delay: 300.ms, duration: 500.ms)
                      .then() // sets own delay to 800ms (300+500)
                      .slide(duration: 400.ms),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 471,
                    height: 60,
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      controller: usernameController,
                      decoration: InputDecoration(
                        hintText: 'Username',
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
                  const Text("Work Email")
                      .orelega20s()
                      .white()
                      .animate()
                      .fadeIn(delay: 300.ms, duration: 500.ms)
                      .then() // sets own delay to 800ms (300+500)
                      .slide(duration: 400.ms),
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
                      .slide(duration: 400.ms),
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
                        hintText: 'Password',
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
                  const Text("Confirm Password")
                      .orelega20s()
                      .white()
                      .animate()
                      .fadeIn(delay: 300.ms, duration: 500.ms)
                      .then() // sets own delay to 800ms (300+500)
                      .slide(duration: 400.ms),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 471,
                    height: 60,
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      controller: confirmPasswordController,
                      // obscureText: true,
                      obscureText: obsecureConfirmText,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                obsecureConfirmText = !obsecureConfirmText;
                              });
                            },
                            child: Icon(
                              obsecureText ? Icons.visibility_off : Icons.visibility,
                              color: Colors.white,
                            )),
                        errorText: _validateConfirmPassword ? null : 'Password Can\'t Be Empty',
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
                        if (emailController.text.isNotEmpty && usernameController.text.isNotEmpty && passwordController.text.isNotEmpty && confirmPasswordController.text.isNotEmpty) {
                          if (isEmail) {
                            if (passwordController.text.length >= 6) {
                              if (passwordController.text == confirmPasswordController.text) {
                                lc.username = usernameController.text;
                                lc.email = emailController.text;
                                lc.password = passwordController.text;
                                lc.confirmPassword = confirmPasswordController.text;
                                lc.register(context);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                  content: Text('Password & Konfirmasi Password is not same'),
                                  backgroundColor: Colors.black87,
                                ));
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                content: Text('Password Must Consist Of More Than 6 Digits'),
                                backgroundColor: Colors.black87,
                              ));
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text('Please input correct email'),
                              backgroundColor: Colors.black87,
                            ));
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text('Please Fill In The Blank'),
                            backgroundColor: Colors.black87,
                          ));
                        }
                        // print(lc.username);
                        // print(lc.email);
                        // print(lc.password);
                        // print(lc.confirmPassword);
                      },
                      text: "Create My Free Account",
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 471,
                    child: Row(
                      children: [
                        // Divider(),
                        Expanded(flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.white, width: 1))),
                          ),
                        ),
                        const Text("OR").nunito20s().white(),
                        Expanded(flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.white, width: 1))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height:   20),
                  // OnHoverButton(
                  //   child: BaseButton(
                  //     width:   471,
                  //     height:   50,
                  //     color: Colors.transparent,
                  //     outlineRadius: 30,
                  //     outlineColor: Colors.white,
                  //     image: "assets/images/img_google.png",
                  //     ontap: () {},
                  //     text: "Sign Up with Google",
                  //   ),
                  // ),
                  SizedBox(height: 20),
                  OnHoverButton(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(const LoginPage());
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Don have an account ? ',
                          style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Sign In',
                              style: GoogleFonts.nunito(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  OnHoverButton(
                    child: GestureDetector(
                      onTap: () {
                        // Get.to(const LoginPage());
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'By signing up, I agree to Gapulo ',
                          style: GoogleFonts.nunito(fontSize: 23, fontWeight: FontWeight.w400, color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'term & conditioins',
                              style: GoogleFonts.nunito(
                                fontSize: 23,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    ]));
  }
}

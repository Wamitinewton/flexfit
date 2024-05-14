import 'package:flexfit/constants.dart';
import 'package:flexfit/controllers/auth_controller.dart';
import 'package:flexfit/views/auth/login_screen.dart';
import 'package:flexfit/common/widgets/auth_cards.dart';
import 'package:flexfit/common/widgets/custom_flat_button.dart';
import 'package:flexfit/common/widgets/lined_text.dart';
import 'package:flexfit/common/widgets/remember_me_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/text_input.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final AuthController _authController = AuthController();
  bool _rememberMe = false;

  bool _showPassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 32, 36),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 26, top: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Create an account with us',
                            style: kNunitoSansSemiBold16NorgheiSilver),
                      ],
                    ),
                  ),
                  TextFieldUtil(
                      controller: _authController.userName,
                      obscureText: false,
                      hintText: "Enter your username",
                      suffixIcon: Icon(
                        Icons.person_2,
                        color: Colors.grey[400],
                      )),
                  TextFieldUtil(
                      controller: _authController.emailController,
                      obscureText: false,
                      hintText: "Enter your email",
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.grey[400],
                      )),
                  TextFieldUtil(
                      controller: _authController.pwd,
                      obscureText: _showPassword,
                      hintText: "Enter your password",
                      suffixIcon: GestureDetector(
                        onTap: _togglePasswordVisibility,
                        child: Icon(
                            _showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: _showPassword
                                ? Colors.grey[400]
                                : Colors.green),
                      )),
                  TextFieldUtil(
                      controller: _authController.cfmpwd,
                      obscureText: _showPassword,
                      hintText: "confirm your password",
                      suffixIcon: GestureDetector(
                        onTap: _togglePasswordVisibility,
                        child: Icon(
                            _showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: _showPassword
                                ? Colors.grey[400]
                                : Colors.green),
                      )),
                  const SizedBox(
                    height: 25,
                  ),
                  PowerButtonUtil(
                      value: _rememberMe,
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = value!;
                        });
                      },
                      label: 'Remember me'),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomFlatButton(
                      onTap: () {},
                      text: 'Register',
                      color: const Color.fromARGB(255, 24, 32, 36),
                      textColor: Colors.white),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Divider(
                          indent: 10,
                          endIndent: 8,
                          thickness: 1,
                          color: Colors.grey[400],
                        ),
                      ),
                      Text(
                        'OR',
                        style: TextStyle(color: Colors.grey[400], fontSize: 14),
                      ),
                      Flexible(
                        child: Divider(
                          indent: 8,
                          endIndent: 10,
                          thickness: 1,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AuthCards(
                        image: 'assets/icons/google_2702602.png',
                        authName: 'Google',
                        onTap: () {},
                      ),
                      AuthCards(
                        image: 'assets/icons/twitter3.png',
                        authName: 'Twitter',
                        onTap: () {},
                      ),
                      AuthCards(
                        image: 'assets/icons/facebook_145802.png',
                        authName: 'facebook',
                        onTap: () {},
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 76),
                    child: LinedText(
                      ontap: () {
                        Get.offAll(LoginScreen());
                      },
                      height: 1,
                      text: "Already have an account?",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

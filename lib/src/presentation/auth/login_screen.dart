import 'package:flexfit/constants.dart';
import 'package:flexfit/src/controllers/auth_controller.dart';
import 'package:flexfit/src/presentation/auth/register_screen.dart';
import 'package:flexfit/src/common/widgets/auth_cards.dart';
import 'package:flexfit/src/common/widgets/custom_flat_button.dart';
import 'package:flexfit/src/common/widgets/lined_text.dart';
import 'package:flexfit/src/common/widgets/remember_me_button.dart';
import 'package:flexfit/src/routes/names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/text_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthController _authController = Get.find();
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
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 26, top: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Enter your credentials to continue',
                          style: kNunitoSansSemiBold16NorgheiSilver,
                        ),
                      ],
                    ),
                  ),
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
                          color:
                              _showPassword ? Colors.grey[400] : Colors.green,
                        ),
                      )),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: LinedText(
                        ontap: () {}, height: 1, text: "Forgot password?"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 20,
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
                      onTap: () async {
                        final email = _authController.emailController.text;
                        final password = _authController.pwd.text;
                        await _authController.signIn(email, password);
                      },
                      text: 'Log in',
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
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 76),
                    child: LinedText(
                      ontap: () {
                      Get.offAllNamed(AppRoutes.register);
                      },
                      height: 1,
                      text: "Do not have an account?",
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

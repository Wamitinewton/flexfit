import 'package:flexfit/constants.dart';
import 'package:flutter/material.dart';

class TextFieldUtil extends StatelessWidget {
  const TextFieldUtil({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.suffixIcon,
    this.onChanged,
    required this.controller
  });

  final bool obscureText;
  final String hintText;
  final Widget suffixIcon;
  final Function(String)? onChanged;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 35),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        obscureText: obscureText,
        onChanged: onChanged,
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: kNunitoSansSemiBold12.copyWith(
              fontSize: 16,
            )),
      ),
    );
  }
}

import 'package:flexfit/constants.dart';
import 'package:flutter/material.dart';

class TextFieldUtil extends StatelessWidget {
  const TextFieldUtil({
    super.key,
    required this.hintText,
    required this.suffixIcon,
  });
  final String hintText;
  final Widget suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 35),
      child: TextFormField(
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: kNunitoSansSemiBold12.copyWith(
              fontSize: 16,
            )
            
            ),
      ),
    );
  }
}

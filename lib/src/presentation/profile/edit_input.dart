import 'package:flexfit/constants.dart';
import 'package:flutter/material.dart';

class EditProfileUtil extends StatelessWidget {
  final String toolTip;
  final String hintText;
  final bool obscureText;

  const EditProfileUtil({super.key, required this.toolTip, required this.hintText, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                toolTip,
                style: kMerriweatherBold16,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Container(
            height: 40,
            child: Center(
              child: TextFormField(
                obscureText: obscureText,
                decoration: InputDecoration(
                  hintText: hintText,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ),
        )
      ],
    );
  }
}

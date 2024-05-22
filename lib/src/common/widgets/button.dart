import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({
    super.key,
    required this.text,
    required this.color,
    required this.ontap,
    required this.containerColor,
  });
  final String text;
  final Color color;
  final VoidCallback? ontap;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 52,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 32),
        decoration: ShapeDecoration(
          color: containerColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 19,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              height: 0,
              letterSpacing: -0.39,
            ),
          ),
        ),
      ),
    );
  }
}

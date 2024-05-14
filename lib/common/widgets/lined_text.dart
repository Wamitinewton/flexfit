import 'package:flutter/material.dart';

class LinedText extends StatelessWidget {
  const LinedText({
    super.key,
    required this.height,
    required this.text,
    required this.ontap,
  });
  final double height;

  final String text;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    // create a Textpainter to measure the width of the text
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: TextStyle(color: Colors.grey[400])),
      textDirection: TextDirection.ltr,
    )..layout();

    final containerWidth = ( textPainter.width) - 5;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: ontap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  text,
                  style: TextStyle(color: Colors.grey[400]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Container(
                  height: height,
                  width: containerWidth,
                  color: Colors.grey[400],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

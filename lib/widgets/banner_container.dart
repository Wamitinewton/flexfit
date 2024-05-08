import 'package:flexfit/constants.dart';
import 'package:flutter/material.dart';

class BannerContainer extends StatelessWidget {
  const BannerContainer({
    super.key,
    required this.child,
    required this.height,
    required this.width,
  });
  final Widget child;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: kGraniteGrey, borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
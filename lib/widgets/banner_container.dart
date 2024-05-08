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

class BoxContent extends StatelessWidget {
  const BoxContent({
    super.key,
    required this.title,
    required this.icon,
    required this.bigText,
    required this.smallText,
  });

  final String title;
  final AssetImage icon;
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          style: kNunitoSans14.copyWith(fontWeight: FontWeight.bold),
        ),
        Image(image: icon),
        Row(
          children: [
            Text(
              bigText,
              style: kNunitoSansBold18.copyWith(
                  fontSize: 20, color: kSnowFlakeWhite),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Text(
                smallText,
                style: const TextStyle(
                    color: kChristmasSilver, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ],
    );
  }
}

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

class CaloriesActivity extends StatelessWidget {
  final AssetImage icon;
  final String hugeText;
  final String unitText;
  final String smallText;
  const CaloriesActivity({
    super.key,
    required this.icon,
    required this.hugeText,
    required this.unitText,
    required this.smallText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Image(image: icon),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                hugeText,
                style: kMerriweather30TinGrey.copyWith(
                    fontSize: 65, color: kLynxWhite),
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  unitText,
                  style: kNunitoSansSemiBold20White,
                ),
              )
            ],
          ),
          Text(
            smallText,
            style: kNunitoSansSemiBold16TinGrey.copyWith(fontSize: 19),
          )
        ],
      ),
    );
  }
}

class OngoingAnalysis extends StatelessWidget {
  const OngoingAnalysis({
    super.key,
    required this.icon,
    required this.bigText,
    required this.smallText,
  });

  final AssetImage icon;
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(),
          child: Image(image: icon),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          bigText,
          style: kNunitoSansSemiBold18.copyWith(
              fontWeight: FontWeight.bold, color: kLynxWhite, fontSize: 22),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          smallText,
          style: kNunitoSansSemiBold16NorgheiSilver,
        )
      ],
    );
  }
}

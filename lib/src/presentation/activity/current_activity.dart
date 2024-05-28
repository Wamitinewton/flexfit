import 'package:flexfit/constants.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/container.dart';

class CurrentActivityScreen extends StatefulWidget {
  const CurrentActivityScreen({super.key});

  @override
  State<CurrentActivityScreen> createState() => _CurrentActivityScreenState();
}

class _CurrentActivityScreenState extends State<CurrentActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        backgroundColor: kLeadBlack,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.cancel_sharp,
                        color: kSnowFlakeWhite,
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(),
                              child: Image(
                                  image:
                                      AssetImage('assets/icons/running.png')),
                            ),
                            Text('Running', style: kNunitoSansSemiBold20White),
                            Icon(
                              Icons.arrow_drop_down,
                              color: kSnowFlakeWhite,
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Done',
                        style:
                            kNunitoSansSemiBold20White.copyWith(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const CaloriesActivity(
                  icon: AssetImage('assets/icons/flame.png'),
                  hugeText: '300.25',
                  unitText: 'Kcal',
                  smallText: 'Calories burn',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    // color: kLeadBlack,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OngoingAnalysis(
                            icon: AssetImage('assets/icons/athletics.png'),
                            bigText: '9.25/KM',
                            smallText: 'Avg Pace'),
                        SizedBox(
                          width: 5,
                        ),
                        OngoingAnalysis(
                            icon: AssetImage('assets/icons/stopwatch (2).png'),
                            bigText: '02:24:56',
                            smallText: 'Duration'),
                        SizedBox(
                          width: 5,
                        ),
                        OngoingAnalysis(
                            icon: AssetImage('assets/icons/navigation.png'),
                            bigText: '15.5 KM',
                            smallText: 'Distance'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
          bottom: 0,
          left: 4,
          right: 4,
          child: Container(
            width: double.infinity,
            height: 240,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
          ))
    ]);
  }
}

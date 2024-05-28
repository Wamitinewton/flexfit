import 'package:fl_chart/fl_chart.dart';
import 'package:flexfit/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                ),
                _timerContainer()
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
                color: kGraniteGrey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: Colors.yellowAccent,
                      ),
                      SizedBox(width: 3,),
                      Text('Heart rate - 110 Bpm', style: kNunitoSansSemiBold16NorgheiSilver,)
                    ],
                  ),
                   Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('Good', style: kNunitoSans16.copyWith(
                        fontSize: 17,
                        color: kCrayolaGreen,
                        fontWeight: FontWeight.bold
                      ),),
                    )),
                  Expanded(
                    child: LineChart(LineChartData(
                        gridData: const FlGridData(show: true),
                        titlesData: const FlTitlesData(show: true),
                        borderData: FlBorderData(
                            show: false,
                            border: Border.all(color: Colors.white, width: 1)),
                        lineBarsData: [
                          LineChartBarData(
                              spots: [
                                const FlSpot(0, 60),
                                const FlSpot(10, 80),
                                const FlSpot(20, 65),
                                const FlSpot(30, 75),
                                const FlSpot(40, 70),
                                const FlSpot(50, 85),
                                const FlSpot(60, 78),
                                const FlSpot(70, 90),
                                const FlSpot(80, 85),
                                const FlSpot(90, 95),
                                const FlSpot(100, 110),
                              ],
                              isCurved: true,
                              color: const Color.fromARGB(255, 178, 76, 68),
                              barWidth: 2,
                              isStrokeCapRound: true,
                              dotData: const FlDotData(show: true))
                        ])),
                  )
                ],
              ),
            ),
          ))
    ]);
  }

  Widget _timerContainer() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Container(
        height: 85,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.yellowAccent, width: 2),
            color: kGraniteGrey),
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.timer,
                        color: kTinGrey,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'time',
                        style: kNunitoSansSemiBold16TinGrey.copyWith(
                            color: kTinGrey),
                      ),
                    ],
                  ),
                  Text(
                    '02:24:56',
                    style: kMerriweather30TinGrey.copyWith(
                        fontSize: 40, color: kLynxWhite),
                  )
                ],
              ),
              const Icon(
                Icons.pause_circle,
                size: 65,
                color: Colors.yellowAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}

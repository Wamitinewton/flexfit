import 'package:flexfit/constants.dart';
import 'package:flexfit/src/common/widgets/container.dart';
import 'package:flexfit/src/common/widgets/calender_slider.dart';
import 'package:flexfit/src/common/widgets/lined_text.dart';
import 'package:flexfit/src/presentation/activity/current_activity.dart';
import 'package:flexfit/src/presentation/maps/map_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  PageController pageController = PageController();
  static final List<String> _workouts = [
    'Biking',
    'Swimming',
    'Run',
    'Sprint run',
    'walk',
    'Weights'
  ];

  static final List<AssetImage> _images = [
    const AssetImage('assets/images/bike1.jpg'),
    const AssetImage('assets/images/swimming.jpg'),
    const AssetImage('assets/images/run.jpg'),
    const AssetImage('assets/images/sprint.jpg'),
    const AssetImage('assets/images/walk.jpg'),
    const AssetImage('assets/images/pexels-anush-1229356.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLeadBlack,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/pexels-pixabay-45201.jpg'),
                      radius: 32,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text("Hi, Newton",
                          style: kNunitoSans14.copyWith(
                              color: kSnowFlakeWhite, fontSize: 16)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Be happy and healthy!",
                          style: kNunitoSans14.copyWith(
                              color: kNoghreiSilver, fontSize: 14))
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: Icon(Icons.notifications, color: Colors.yellow),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BannerContainer(
                      height: 125,
                      width: 140,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'My goals',
                            style: kNunitoSans14.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              // bottom: 50,
                              right: 50,
                              left: 50,
                            ),
                            child: Image(
                                image: AssetImage('assets/icons/flame.png')),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '1.000',
                                style: kNunitoSansBold18.copyWith(
                                    fontSize: 23, color: kSnowFlakeWhite),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 7),
                                child: Text(
                                  'Kcal',
                                  style: TextStyle(
                                      color: kChristmasSilver,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Calories burnt in a week',
                              style: kNunitoSans14.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const BannerContainer(
                      height: 125,
                      width: 185,
                      child: Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              BoxContent(
                                  title: 'Height',
                                  icon: AssetImage(
                                      'assets/icons/man-standing-up.png'),
                                  bigText: '181',
                                  smallText: 'cm'),
                              SizedBox(
                                width: 5,
                              ),
                              BoxContent(
                                  title: 'Weight',
                                  icon: AssetImage('assets/icons/person.png'),
                                  bigText: '85',
                                  smallText: 'kg'),
                              SizedBox(
                                width: 5,
                              ),
                              BoxContent(
                                  title: 'Age',
                                  icon:
                                      AssetImage('assets/icons/person age.png'),
                                  bigText: '21',
                                  smallText: 'yo'),
                            ],
                          )))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CalenderSliderBuilder(),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Suggested workout',
                    style: kNunitoSansSemiBold16.copyWith(
                        color: kLynxWhite, fontSize: 18),
                  ),
                  LinedText(height: 1, text: 'See all', ontap: () {})
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 190,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _workouts.length,
                    controller: pageController,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: _images[index], fit: BoxFit.cover)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: 15,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.yellow,
                                        borderRadius: BorderRadius.circular(3)),
                                    child:
                                        Center(child: Text(_workouts[index])),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: TextButton(
                                  onPressed: () {
                                    Get.offAll(CurrentActivityScreen());
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          WidgetStateProperty.all(kOffBlack)),
                                  child: Text(
                                    'Start wotkout',
                                    style: kNunitoSansSemiBold20White.copyWith(
                                        fontSize: 13),
                                  ),
                                ),
                              )
                            ],
                          ));
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daily Challenge',
                    style: kNunitoSansSemiBold16.copyWith(
                        color: kLynxWhite, fontSize: 18),
                  ),
                  LinedText(height: 1, text: 'See all', ontap: () {})
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 190,
                width: double.infinity,
                child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    controller: pageController,
                    itemBuilder: (context, index) {
                      return Stack(children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: kGraniteGrey,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        Positioned(
                          left: 30,
                          top: 0,
                          child: Stack(children: [
                            Container(
                                width: 200,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(8))),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                  color: Colors.yellow, shape: BoxShape.circle),
                            ),
                          ]),
                        )
                      ]);
                    }),
              ),
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.offAll(const MapViewScreen());
        },
        // mini: true,

        elevation: 8,
        highlightElevation: 4,
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: const Icon(
          Icons.add,
          color: kLynxWhite,
          size: 35,
        ),
      ),
    );
  }
}

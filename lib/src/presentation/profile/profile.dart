import 'package:flexfit/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: kLeadBlack,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: kLeadBlack,
          automaticallyImplyLeading: false,
          title: Text(
            'profile',
            style: kNunitoSansSemiBold12.copyWith(
                fontSize: 22, fontWeight: FontWeight.bold),
          ),
          // leading: GestureDetector(
          //   onTap: () {},
          //   child: Icon(Icons.arrow_back),
          // ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 210,
                    decoration: const BoxDecoration(
                        color: kLeadBlack,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                  ),
                  Expanded(
                      child: Container(
                          width: double.infinity,
                          color: kLynxWhite,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 95,
                              ),
                              const Text('Newton Wamiti'),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text('wamitinewton@gmail.com'),
                              const SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                  child: GridView.builder(
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                      ),
                                      itemCount: 6,
                                      physics:
                                          const AlwaysScrollableScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        return Container(
                                          height: 60,
                                          width: 60,
                                          margin: const EdgeInsets.all(9.5),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 15),
                                          decoration: BoxDecoration(
                                              color: kLynxWhite,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 4,
                                                  spreadRadius: 2,
                                                )
                                              ]),
                                        );
                                      }))
                            ],
                          )))
                ],
              ),
              Positioned(
                top: 140,
                left: MediaQuery.of(context).size.width / 2 - 67,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 75,
                  child: Stack(children: [
                    const CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 70,
                      backgroundImage:
                          AssetImage('assets/images/pexels-pixabay-45201.jpg'),
                    ),
                    Positioned(
                        right: 0,
                        bottom: 7,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                          child: const Center(
                            child: Icon(
                              Icons.photo_camera,
                              color: Colors.white,
                            ),
                          ),
                        ))
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}

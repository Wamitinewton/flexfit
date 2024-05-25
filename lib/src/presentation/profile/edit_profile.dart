import 'package:flexfit/constants.dart';
import 'package:flexfit/src/common/widgets/button.dart';
import 'package:flexfit/src/presentation/profile/edit_input.dart';
import 'package:flexfit/src/routes/names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfilescreen extends StatefulWidget {
  const EditProfilescreen({super.key});

  @override
  State<EditProfilescreen> createState() => _EditProfilescreenState();
}

class _EditProfilescreenState extends State<EditProfilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLynxWhite,
      appBar: AppBar(
        backgroundColor: kLynxWhite,
        centerTitle: true,
        title: const Text(
          'Edit Profile',
          style: kNunitoSansBold18,
        ),
        leading: GestureDetector(
            onTap: () {
              Get.offAllNamed(AppRoutes.application);
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.black,
                  backgroundImage:
                      AssetImage('assets/images/pexels-pixabay-45201.jpg'),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const EditProfileUtil(
                toolTip: 'Name',
                hintText: 'Wamiti Newton',
                obscureText: false,
              ),
              const SizedBox(
                height: 14,
              ),
              const EditProfileUtil(
                hintText: 'wamitinewton@gmail.com',
                toolTip: 'Email',
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              const EditProfileUtil(
                toolTip: 'password',
                hintText: '12345678w',
                obscureText: false,
              ),
              SizedBox(height: 80,),
              LargeButton(
                  text: 'Save and continue',
                  color: kLynxWhite,
                  ontap: () {},
                  containerColor: kOffBlack)
            ],
          ),
        ),
      )),
    );
  }
}

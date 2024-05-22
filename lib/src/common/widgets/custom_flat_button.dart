import 'package:flexfit/src/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFlatButton extends StatefulWidget {
  final VoidCallback onTap;
  final String text;
  final Color color;
  final Color textColor;

  const CustomFlatButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.color,
      required this.textColor});

  @override
  State<CustomFlatButton> createState() => _CustomFlatButtonState();
}

class _CustomFlatButtonState extends State<CustomFlatButton>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;
  final AuthController _authController = Get.find();

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
        super.initState();
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: GestureDetector(
        onTapDown: _tapDown,
        onTapUp: _tapUp,
        onTap: widget.onTap,
        child: Transform.scale(
          scale: _scale,
          child: Container(
            height: 40,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: widget.color,
                border: Border.all(color: Colors.white, width: 1.5),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0x80000000),
                      blurRadius: 12.0,
                      offset: Offset(0.0, 5.0))
                ]),
            child: Center(
                child: _authController.isLoading.value
                    ? const CircularProgressIndicator()
                    : Text(
                        widget.text,
                        style: TextStyle(color: widget.textColor),
                      )),
          ),
        ),
      ),
    );
  }

  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }
}

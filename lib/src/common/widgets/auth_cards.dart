import 'package:flutter/material.dart';

class AuthCards extends StatefulWidget {
  const AuthCards({
    super.key,
    required this.image,
    required this.authName,
    required this.onTap,
  });
  final String image;
  final String authName;
  final VoidCallback onTap;

  @override
  State<AuthCards> createState() => _AuthCardsState();
}

class _AuthCardsState extends State<AuthCards>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return GestureDetector(
      onTapDown: _tapDown,
      onTapUp: _tapUp,
      onTap: widget.onTap,
      child: Transform.scale(
        scale: _scale,
        child: Container(
          margin: EdgeInsets.only(top: 10),
          width: 95,
          height: 35,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 24, 32, 36),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                  padding: EdgeInsets.all(3), child: Image.asset(widget.image)),
              Center(
                child: Text(
                  widget.authName,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              )
            ],
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

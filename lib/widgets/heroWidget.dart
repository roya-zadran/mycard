import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "Hero1",
      child: Image.asset(
        'assets/images/welcome.png',
        color: Colors.deepOrangeAccent,
        colorBlendMode: BlendMode.modulate,
        fit: BoxFit.cover,
        height: double.infinity,
      ),
    );
  }
}
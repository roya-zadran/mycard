import 'package:flutter/material.dart';

class HeroWidget extends StatefulWidget {
  final String PageTilte;

  HeroWidget({super.key, required this.PageTilte});

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: "Hero1",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/welcome.png',
              color: Colors.deepOrangeAccent,
              colorBlendMode: BlendMode.darken,
              fit: BoxFit.cover,
              height: 300,
              width: double.infinity,
            ),
          ),
        ),
        FittedBox(
          child: Text(
            widget.PageTilte,
            style: TextStyle(
              color: Colors.tealAccent,
              fontSize: 20,
              letterSpacing: 50,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}

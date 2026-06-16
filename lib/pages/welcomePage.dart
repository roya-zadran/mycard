import 'package:flutter/material.dart';
import 'package:mycard/widgets/widgetTree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/welcome.png',
            color: Colors.deepOrangeAccent,
            colorBlendMode: BlendMode.modulate,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              child: Text("Login"),
            ),
          ),
        ],
      ),
    );
  }
}

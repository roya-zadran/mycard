import 'package:flutter/material.dart';
import 'package:mycard/widgets/heroWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          HeroWidget(PageTilte: "Home"),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)),
            color: Colors.teal,
            child: Container(
              height: 70,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Center(child: Text("Description")),
              ),
            ),),

        ],
      ),
    );
  }
}

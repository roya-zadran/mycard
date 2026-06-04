import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.lightBlueAccent),
        body: Column(
          children: [
            Container(color: Colors.lightBlueAccent, width: double.infinity, height: 250),
          ],
        ),
      ),
    );
  }
}

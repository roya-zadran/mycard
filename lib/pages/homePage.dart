import 'package:flutter/material.dart';
import 'package:mycard/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Card App", style: AppTitlestyle),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              SnackBar(content: Text("Hiiii"), duration: Duration(seconds: 3));
            },
            child: Text("Click me"),
          ),
          ElevatedButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("This is knikui"),));
          }, child: Text("login")),
        ],
      ),
    );
  }
}

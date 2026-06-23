import 'package:flutter/material.dart';
import 'package:mycard/notififers.dart';
import 'package:mycard/pages/welcomePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: ThemeNotifier, builder: (context, isDarkMode, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.teal,
            brightness: isDarkMode == true? Brightness.dark : Brightness.light
          ),
        ),
        home: WelcomePage(),
      );
    },);
  }
}

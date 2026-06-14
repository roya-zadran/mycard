import 'package:flutter/material.dart';
import 'package:mycard/widgets/NavBarWidget.dart';
import 'package:mycard/notififers.dart';
import 'package:mycard/pages/profilePage.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Home')
    ),
    );
  }
}



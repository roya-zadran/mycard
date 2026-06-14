import 'package:flutter/material.dart';
import 'package:mycard/NavBarWidget.dart';
import 'package:mycard/homePage.dart';
import 'package:mycard/notififers.dart';
import 'package:mycard/profilePage.dart';

//HomePage = 0, ProfilePage = 1
List<Widget> pages = [HomePage(), ProfilePage()];
class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBarWidget(),
      body: ValueListenableBuilder(
        valueListenable: SelectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
    );
  }
}

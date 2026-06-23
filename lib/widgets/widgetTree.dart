import 'package:flutter/material.dart';
import 'package:mycard/widgets/NavBarWidget.dart';
import 'package:mycard/pages/homePage.dart';
import 'package:mycard/notififers.dart';
import 'package:mycard/pages/profilePage.dart';

//HomePage = 0, ProfilePage = 1
List<Widget> pages = [HomePage(), ProfilePage()];
class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [ ValueListenableBuilder(valueListenable: ThemeNotifier, builder: (context, IsDarkMode, child) {
        return
          IconButton(onPressed: () {
            ThemeNotifier.value =!ThemeNotifier.value;
          }, icon: IsDarkMode == true ? Icon(Icons.light_mode_outlined) : Icon(Icons.dark_mode) );
      },)
      ],),
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

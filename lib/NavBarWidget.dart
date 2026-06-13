import 'package:flutter/material.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWigetState();
}

int selectedPage = 0;

class _NavBarWigetState extends State<NavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      indicatorColor: Colors.black12,
      height: 65,
      onDestinationSelected: (value) {
        setState(() {
          selectedPage = value;
        });
      },
      selectedIndex: selectedPage,
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.home, color: Colors.teal, size: 25),
          label: "Home",
        ),
        NavigationDestination(
          icon: Icon(Icons.person, color: Colors.teal, size: 25),
          label: "Profile",
        ),
      ],
    );
  }
}

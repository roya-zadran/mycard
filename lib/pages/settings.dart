import 'package:flutter/material.dart';
import 'package:mycard/notififers.dart';
import 'package:mycard/pages/welcomePage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomePage();
                  },
                ),
                (route) => false,
              );
              SelectedPageNotifier.value = 0;

            },
            icon: Icon(Icons.logout, color: Colors.tealAccent),
          ),
        ],
      ),
    );
  }
}

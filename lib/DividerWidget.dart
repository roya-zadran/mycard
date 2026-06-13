import 'package:flutter/material.dart';
import 'package:mycard/notififers.dart';

class MyDividerWidget extends StatelessWidget {
  final int isSelected;
  MyDividerWidget({ required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: SelectedTapNotifier, builder: (context, selectedTap, child) {
      return Container(
        alignment: Alignment.bottomLeft,
        height:3,
        width: 200,
        color: selectedTap == isSelected ? Colors.black45 : Colors.teal,
      );
    },);
  }
}
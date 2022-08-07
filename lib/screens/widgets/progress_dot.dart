import 'package:flutter/material.dart';

class ProgressDot extends StatelessWidget {
  final int index;
  final int selectedIndex;

  const ProgressDot(
      {Key? key, required this.index, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 6,
        margin: const EdgeInsets.all(4),
        width: selectedIndex == index ? 20 : 6,
        decoration: BoxDecoration(
            color: index == selectedIndex
                ? Theme.of(context).accentColor
                : Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(3)),
      );
}

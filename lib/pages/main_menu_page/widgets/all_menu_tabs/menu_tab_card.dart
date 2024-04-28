import 'package:flutter/material.dart';

class MenuTabCard extends StatelessWidget {
  const MenuTabCard(
      {super.key,
      required this.iconData,
      required this.textContent,
      required this.handleOnPressTab,
      this.bgColor});

  final IconData iconData;
  final String textContent;
  final VoidCallback handleOnPressTab;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: bgColor ?? Colors.blue.shade800,
                side: const BorderSide(width: 0, color: Colors.transparent)),
            onPressed: handleOnPressTab,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Icon(color: Colors.white, iconData),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                      style: const TextStyle(color: Colors.white), textContent),
                ],
              ),
            )));
  }
}

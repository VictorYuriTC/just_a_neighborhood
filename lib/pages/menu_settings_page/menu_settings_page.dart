import 'package:flutter/material.dart';

class MenuSettingsPage extends StatefulWidget {
  const MenuSettingsPage({super.key});

  @override
  State<MenuSettingsPage> createState() => _MenuSettingsPageState();
}

class _MenuSettingsPageState extends State<MenuSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [Text("Settings")],
      )),
    );
  }
}

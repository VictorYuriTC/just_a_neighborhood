import 'package:flutter/material.dart';
import 'package:just_a_neighborhood/pages/main_menu_page/widgets/all_menu_tabs/all_menu_tabs.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({super.key});

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [AllMenuTabs()],
      )),
    );
  }
}

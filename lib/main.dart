import 'package:flutter/material.dart';
import 'package:just_a_neighborhood/pages/game_map_page/game_map_page.dart';
import 'package:just_a_neighborhood/pages/main_menu_page/main_menu_page.dart';
import 'package:just_a_neighborhood/pages/menu_settings_page/menu_settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MainMenuPage(),
      routes: {
        '/game/map': (context) => const GameMapPage(),
        '/menu/settings': (context) => const MenuSettingsPage()
      },
    );
  }
}

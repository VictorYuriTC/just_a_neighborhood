import 'package:flutter/material.dart';
import 'package:just_a_neighborhood/pages/game_map_page/game_map_page.dart';
import 'package:just_a_neighborhood/pages/main_menu_page/widgets/all_menu_tabs/menu_tab_card.dart';
import 'package:just_a_neighborhood/pages/menu_settings_page/menu_settings_page.dart';

class AllMenuTabs extends StatefulWidget {
  const AllMenuTabs({super.key});

  @override
  State<AllMenuTabs> createState() => _AllMenuTabsState();
}

class _AllMenuTabsState extends State<AllMenuTabs> {
  void handleOnPressPlayTab() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const GameMapPage()));
  }

  void handleOnPressSettingsTab() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const MenuSettingsPage()));
  }

  void handleOnPressExitTab() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuTabCard(
            iconData: Icons.videogame_asset,
            textContent: "Play",
            handleOnPressTab: handleOnPressPlayTab),
        MenuTabCard(
            iconData: Icons.settings,
            textContent: "Settings",
            handleOnPressTab: handleOnPressSettingsTab),
        MenuTabCard(
          iconData: Icons.exit_to_app,
          textContent: "Exit",
          handleOnPressTab: handleOnPressExitTab,
          bgColor: Colors.red.shade500,
        ),
      ],
    );
  }
}

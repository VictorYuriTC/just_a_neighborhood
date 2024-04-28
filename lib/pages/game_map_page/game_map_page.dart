import 'package:flutter/material.dart';
import 'package:just_a_neighborhood/pages/game_map_page/random_generated_map_tiles/random_generated_map_tiles.dart';

class GameMapPage extends StatefulWidget {
  const GameMapPage({super.key});

  @override
  State<GameMapPage> createState() => _GameMapPageState();
}

class _GameMapPageState extends State<GameMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: RandomGeneratedMapTiles(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.location_on_outlined),
      ),
    );
  }
}

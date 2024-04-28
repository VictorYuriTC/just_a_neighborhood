import 'dart:math';

import 'package:flutter/material.dart';

class MapTile extends StatefulWidget {
  const MapTile(
      {super.key,
      required this.totalAmountOfMapTilesPerRow,
      required this.currentPlayerPositionIndex});

  final int totalAmountOfMapTilesPerRow;
  final bool currentPlayerPositionIndex;

  @override
  State<MapTile> createState() => _MapTileState();
}

class _MapTileState extends State<MapTile> {
  static List<String> allPossibleMapTiles = [
    'earth',
    'grass',
    'river',
    'snow',
    'desert'
  ];
  var randomTileIndex = 0;

  @override
  void initState() {
    super.initState();

    setState(() {
      randomTileIndex = Random().nextInt(4);
    });
  }

  @override
  Widget build(BuildContext context) {
    Color getMapTileColor() {
      if (allPossibleMapTiles[randomTileIndex] == 'earth') {
        return Colors.brown.shade400;
      }

      if (allPossibleMapTiles[randomTileIndex] == 'grass') {
        return Colors.green.shade400;
      }

      if (allPossibleMapTiles[randomTileIndex] == 'river') {
        return Colors.blue.shade300;
      }

      if (allPossibleMapTiles[randomTileIndex] == 'snow') {
        return Colors.indigo.shade50;
      }

      if (allPossibleMapTiles[randomTileIndex] == 'desert') {
        return Colors.amber.shade50;
      }

      return Colors.black;
    }

    return Container(
      color: getMapTileColor(),
      child: widget.currentPlayerPositionIndex
          ? const Center(child: Text("Player"))
          : null,
    );
  }
}

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:just_a_neighborhood/listeners/simple_keyboard_listener.dart';
import 'package:just_a_neighborhood/pages/game_map_page/random_generated_map_tiles/map_tile.dart';

class RandomGeneratedMapTiles extends StatefulWidget {
  const RandomGeneratedMapTiles({super.key});

  @override
  State<RandomGeneratedMapTiles> createState() =>
      _RandomGeneratedMapTilesState();
}

class _RandomGeneratedMapTilesState extends State<RandomGeneratedMapTiles> {
  static int tilesPerRowAndCol = 20;
  static int totalAmountOfMapTiles = tilesPerRowAndCol * tilesPerRowAndCol;
  final ScrollController _controller = ScrollController();

  var currentPlayerPositionIndex = 0;

  @override
  void initState() {
    super.initState();

    setState(() {
      currentPlayerPositionIndex = Random().nextInt(totalAmountOfMapTiles);
    });
  }

  @override
  Widget build(BuildContext context) {
    void handleOnPressArrowUp() {
      if (currentPlayerPositionIndex - tilesPerRowAndCol >= 0) {
        setState(() {
          currentPlayerPositionIndex -= tilesPerRowAndCol;
        });

        _controller.animateTo(
            _controller.offset -
                MediaQuery.of(context).size.height / tilesPerRowAndCol,
            duration: const Duration(milliseconds: 500),
            curve: Curves.decelerate);
      }
    }

    void handleOnPressArrowRight() {
      if (currentPlayerPositionIndex == 0) {
        return;
      }

      if ((currentPlayerPositionIndex + 1) % 20 == 0) {
        return;
      }

      setState(() {
        currentPlayerPositionIndex++;
      });
    }

    void handleOnPressArrowDown() {
      if (totalAmountOfMapTiles >
          currentPlayerPositionIndex + tilesPerRowAndCol) {
        setState(() {
          currentPlayerPositionIndex += tilesPerRowAndCol;
        });

        _controller.animateTo(
            _controller.offset +
                MediaQuery.of(context).size.width / tilesPerRowAndCol,
            duration: const Duration(milliseconds: 500),
            curve: Curves.decelerate);
      }
    }

    void handleOnPressArrowLeft() {
      if (currentPlayerPositionIndex % 20 == 0) {
        return;
      }

      if (currentPlayerPositionIndex == totalAmountOfMapTiles - 1) {
        return;
      }

      setState(() {
        currentPlayerPositionIndex--;
      });
    }

    return SimpleKeyboardListener(
        handleOnPressArrowUp: handleOnPressArrowUp,
        handleOnPressArrowRight: handleOnPressArrowRight,
        handleOnPressArrowDown: handleOnPressArrowDown,
        handleOnPressArrowLeft: handleOnPressArrowLeft,
        child: GridView.builder(
          controller: _controller,
          itemCount: totalAmountOfMapTiles,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 20,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: MapTile(
                  currentPlayerPositionIndex:
                      currentPlayerPositionIndex == index,
                  totalAmountOfMapTilesPerRow:
                      sqrt(totalAmountOfMapTiles).toInt()),
            );
          },
        ));
  }
}

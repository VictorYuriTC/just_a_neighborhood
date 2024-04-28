import 'package:flutter/material.dart';

class GameMapPage extends StatefulWidget {
  const GameMapPage({super.key});

  @override
  State<GameMapPage> createState() => _GameMapPageState();
}

class _GameMapPageState extends State<GameMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text('Game Map')),
    );
  }
}

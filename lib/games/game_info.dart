import 'package:flutter/material.dart';

class GameInfo extends StatelessWidget {
  final String game;
  GameInfo({required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game),
      ),
      body: Text(game),
    );
  }
}

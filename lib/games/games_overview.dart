import 'package:flutter/material.dart';

class GamesOverview extends StatelessWidget {
  final _games = ["Game#1", "Game#2", "Game#3"];

  final ValueChanged didSelectGame;

  GamesOverview({required this.didSelectGame});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Games")),
      body: ListView.builder(
          itemCount: _games.length,
          itemBuilder: (context, index) {
            final game = _games[index];
            return Card(
              child: ListTile(
                title: Text(game),
                onTap: () => didSelectGame(game),
              ),
            );
          }),
    );
  }
}

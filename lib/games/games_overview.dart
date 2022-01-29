import 'package:after_release_tracker/models/game_stored.dart';
import 'package:flutter/material.dart';

class GamesOverview extends StatelessWidget {
  final _games = [
    GameStored("Horizon Zero Dawn™ Complete Edition", 1151640,
        "https://cdn.akamai.steamstatic.com/steam/apps/1151640/header.jpg?t=1635442187"),
    GameStored("Apex Legends™", 1172470,
        "https://cdn.akamai.steamstatic.com/steam/apps/1172470/header.jpg?t=1638900075"),
    GameStored("New World", 1063730,
        "https://cdn.akamai.steamstatic.com/steam/apps/1063730/header.jpg?t=1643097634"),
  ];

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
                title: Text(game.name),
                onTap: () => didSelectGame(game),
              ),
            );
          }),
    );
  }
}

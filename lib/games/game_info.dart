import 'package:after_release_tracker/models/game_stored.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class GameInfo extends StatelessWidget {
  final GameStored game;

  GameInfo({required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExtendedImage.network(
            "https://cdn.akamai.steamstatic.com/steam/apps/1151640/header.jpg?t=1635442187",
            cache: true,
          ),
          Text(
            game.name,
            style: Theme.of(context).textTheme.headline5,
          ),
          Text(
            game.steamAppid.toString(),
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}

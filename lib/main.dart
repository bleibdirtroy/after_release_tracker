import 'package:after_release_tracker/games/game_info.dart';
import 'package:after_release_tracker/games/games_overview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? _selectedGame;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyApp._title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navigator(
        pages: [
          MaterialPage(
            child: GamesOverview(
              didSelectGame: (game) {
                setState(() => _selectedGame = game);
              },
            ),
          ),
          if (_selectedGame != null)
            MaterialPage(
              child: GameInfo(
                game: _selectedGame!,
              ),
            ),
        ],
        onPopPage: (route, result) {
          _selectedGame = null;
          return route.didPop(result);
        },
      ),
    );
  }
}

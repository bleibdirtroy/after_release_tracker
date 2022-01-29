import 'package:after_release_tracker/games/games_overview.dart';
import 'package:after_release_tracker/search/search_page.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyApp._title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/my_games',
      routes: {
        '/my_games': (context) => const GamesOverview(),
        '/search': (context) => const SearchPage(),
      },
    );
  }
}

import 'package:after_release_tracker/utils/default_app_bar.dart';
import 'package:flutter/material.dart';

class GamesOverview extends StatelessWidget {
  const GamesOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: Text("Games Overview"),
      floatingActionButton: IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          Navigator.pushNamed(context, '/search');
        },
      ),
    );
  }
}

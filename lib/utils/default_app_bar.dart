import 'package:flutter/material.dart';

class DefaultAppBar extends AppBar {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(_title),
    );
  }
}

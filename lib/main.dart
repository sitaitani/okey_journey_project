import 'package:flutter/material.dart';
import 'package:okey_journey_project/Ui/favorite_actor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: FavoriteActor(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mind_games/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Mind Games';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        textTheme: Theme.of(context).primaryTextTheme,
        canvasColor: Theme.of(context).primaryColor,
        iconTheme: Theme.of(context).primaryIconTheme,
      ),
      home: HomePage(title),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:mind_games/user_section.dart';
import 'package:mind_games/partner_section.dart';

class HomePage extends StatelessWidget {
  HomePage(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          UserSection(),
          PartnerSection()
        ],
      ),
    );
  }
}
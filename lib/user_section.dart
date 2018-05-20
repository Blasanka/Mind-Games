import 'package:flutter/material.dart';

class UserSection extends StatefulWidget {
  @override
  _UserSectionState createState() => new _UserSectionState();
}

class _UserSectionState extends State<UserSection> {
  bool flag;
  Color color = Colors.lightBlue;

  void _changeColor() {
    setState(() {
      color = flag ? Colors.redAccent : Colors.greenAccent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: color,
      child: new Center(child: Text('It is not posible!')),
    );
  }
}
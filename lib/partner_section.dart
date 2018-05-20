import 'package:flutter/material.dart';

class PartnerSection extends StatefulWidget {
  @override
  _PartnerSectionState createState() => new _PartnerSectionState();
}

class _PartnerSectionState extends State<PartnerSection> {
  Color color = Colors.white30;

  void _changeColor(bool flag) {
    setState(() {
      color = flag ? Colors.greenAccent : Colors.redAccent;
    });
  }

  Widget rightButton() {
    return Material(
      type: MaterialType.circle,
      color: color,
      child: new Container(
        width: 50.0,
        height: 50.0,
        child: InkWell(
          onTap: () {
            _changeColor(true);
          },
          splashColor: color,
          child: Icon(Icons.check),
        ),
      ),
    );
  }

  Widget leftButton() {
    return Material(
      type: MaterialType.circle,
      color: color,
      child: new Container(
        width: 50.0,
        height: 50.0,
        child: InkWell(
          onTap: () {
            _changeColor(false);
          },
          splashColor: color,
          child: Icon(Icons.close),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      flex: 2,
      child: new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Is it correct?'),
            Container(
              height: 20.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[leftButton(), rightButton()],
            ),
          ],
        ),
      ),
    );
  }
}

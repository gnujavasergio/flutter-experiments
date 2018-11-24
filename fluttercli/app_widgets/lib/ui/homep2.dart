import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Container(
          alignment: Alignment.center,
          color: Colors.deepOrangeAccent,
          //width: 192.0,
          //height: 96.0,
          //margin: EdgeInsets.all(64.0),
          margin: EdgeInsets.only(left: 32.0),
          child: new Text(
            "Pizza",
            textDirection: TextDirection.ltr,
      ),
    ));
  }
}

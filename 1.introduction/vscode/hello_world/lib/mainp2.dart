import 'package:flutter/material.dart';

void main() {
  runApp(new Material(
    color: Colors.deepOrange,
    child: new Center(
        child: new Text(
      "Hello Flutter",
      textDirection: TextDirection.ltr,
      style: new TextStyle(color: Colors.white, fontSize: 38.0),
    )),
  ));
}

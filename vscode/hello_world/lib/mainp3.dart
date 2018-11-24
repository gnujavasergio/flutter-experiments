import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Hello Flutter App",
    home: new Material(
      color: Colors.blue,
      child: new Center(
          child: new Text(
        "Hello Flutter",
        textDirection: TextDirection.ltr,
        style: new TextStyle(color: Colors.white, fontSize: 38.0),
      )),
    ),
  ));
}

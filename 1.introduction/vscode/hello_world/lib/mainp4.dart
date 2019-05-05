import 'package:flutter/material.dart';

// Material
void main() {
  runApp(new MaterialApp(
      title: "Hello Flutter App",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("Title AppBar", textDirection: TextDirection.ltr),
        ),
        body: Material(
          color: Colors.deepPurple,
          child: new Center(
            child: new Text(
              "Hello Flutter",
              textDirection: TextDirection.ltr,
              style: new TextStyle(color: Colors.white, fontSize: 36.0),
            ),
          ),
        ),
      )));
}

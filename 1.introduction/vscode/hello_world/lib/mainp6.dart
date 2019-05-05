import 'package:flutter/material.dart';

//void main() {
//  runApp(new HelloWorldFlutterApp());
//}

void main() => runApp(new HelloWorldFlutterApp());

class HelloWorldFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Hello Flutter App",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text(
              "Title AppBar",
              textDirection: TextDirection.ltr,
            ),
          ),
          body: new Material(
            color: Colors.deepPurple,
            child: new Center(
              child: new Text(
                "Hello Flutter",
                textDirection: TextDirection.ltr,
                style: new TextStyle(color: Colors.white, fontSize: 36.0),
              ),
            ),
          ),
        ));
  }
}

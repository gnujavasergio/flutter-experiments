import 'package:flutter/material.dart';
import './screens/home.dart';
//void main() {
//  runApp(new HelloWorldFlutterApp());
//}

void main() => runApp(new HelloWorldFlutterApp());

class HelloWorldFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Hello Flutter VSCode",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text(
              "Title VSCode",
              textDirection: TextDirection.ltr,
            ),
          ),
          body: new HomeScreen()
        ));
  }
}

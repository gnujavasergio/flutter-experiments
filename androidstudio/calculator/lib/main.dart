import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloYou(),
    );
  }
}

class HelloYou extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HelloYouState();
  }

}

class _HelloYouState extends State<HelloYou> {
  String name = "";
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hello You Demo"),
        backgroundColor: Colors.blueAccent,
      ),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              onChanged: (String value) {
                setState(() {
                  name = value;
                });
              },
              decoration: new InputDecoration(hintText: "Introduzca su nombre"),
            ),
            new Text("Hello " + name + "!")
          ],
        ),
      ),
    );
  }

}

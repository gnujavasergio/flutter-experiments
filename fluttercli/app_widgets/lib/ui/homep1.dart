import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,      
      color: Colors.deepOrangeAccent,
      width: 192.0,
      height: 96.0,
      child: new Text("Pizza", textDirection: TextDirection.ltr,),
    );
  }
  
}
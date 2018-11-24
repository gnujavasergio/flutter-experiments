
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Container(
          alignment: Alignment.center,
          color: Colors.deepOrangeAccent,
          child: new Text(
            "Pizza",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 80.0,
              decoration: TextDecoration.none,
              fontFamily: 'Oxygen',
              //fontWeight: FontWeight.w300
              fontWeight: FontWeight.normal,
              //fontWeight: FontWeight.bold
              ),            
      ),
    ));
  }
}

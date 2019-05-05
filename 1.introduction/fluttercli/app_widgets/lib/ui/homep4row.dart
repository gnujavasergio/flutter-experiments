import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Container(
            alignment: Alignment.center,
            color: Colors.deepOrangeAccent,
            child: new Row(
              children: <Widget>[
                new Expanded(child: Text(
                  "Tres Estaciones",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 30.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Oxygen',
                    //fontWeight: FontWeight.w300
                    fontWeight: FontWeight.normal,
                    //fontWeight: FontWeight.bold
                  ),
                )),
                new Expanded(child: new Text(
                  "Chorizo, Mortadela, Piña",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Oxygen',
                    //fontWeight: FontWeight.w300
                    fontWeight: FontWeight.normal,
                    //fontWeight: FontWeight.bold
                  ),
                )) 
              ],
            )
          )
        );
  }
}
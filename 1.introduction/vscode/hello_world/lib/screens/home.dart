import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.deepPurple,
      child: new Center(
        child: new Text(
          sayHello(),
          textDirection: TextDirection.ltr,
          style: new TextStyle(color: Colors.white, fontSize: 24.0),
        ),
      ),
    );
  }

  String sayHello() {
    // Tipos de datos
    // Puedes manejarlo como Javascript
    var unVar;
    unVar = "Saludar";
    unVar = 8;
    unVar = 4.14;

    // Numeros
    num unNum;
    unNum = 8;
    unNum = 3.14;

    // Solo enteros
    int unInt = 8;

    // Solo double
    double unDouble = 3.5;

    // Cadenas
    String hello;
    hello = "Hola";

    DateTime dateTime = new DateTime.now();
    int hour = dateTime.hour;
    int minute = dateTime.minute;
    if (hour < 12) {
      hello = "Good morning";
    } else if (hour < 18) {
      hello = "Good afternoon";
    } else {
      hello = "Good night";
    }
    String minutes = (minute < 10) ? "0" + minute.toString() : minute.toString();
    return "It's now " + hour.toString() + ":"  + minutes +"\n"  + hello;
  }
}

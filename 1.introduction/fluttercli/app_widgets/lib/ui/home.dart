import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 30.0, left: 10.0),
            color: Colors.deepOrangeAccent,
            child: new Column(children: <Widget>[
              new Row(
                children: <Widget>[
                  new Expanded(
                      child: Text(
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
                  new Expanded(
                      child: new Text(
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
              ),
              new Row(
                children: <Widget>[
                  new Expanded(
                      child: Text(
                    "Pizza Española",
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
                  new Expanded(
                      child: new Text(
                    "Chorizo, tocino",
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
              ),
              new PizzaAsset(),
              new OrderButton()
            ])));
  }
}

class PizzaAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = new AssetImage('images/pizza.png');
    Image image = new Image(image: assetImage, width: 400.0, height: 400.0);
    return new Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = new Container(
      margin: EdgeInsets.only(top: 16.0),
      child: new RaisedButton(
        child: new Text("Order tu pizza"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );

    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
        title: new Text("Orden Completa"),
        content: new Text("Gracias por Ordenar"));

    showDialog(
        context: context,
        // builder: (BuildContext context) {
        //   return alert;
        // }
        builder: (BuildContext context) => alert);
  }
}

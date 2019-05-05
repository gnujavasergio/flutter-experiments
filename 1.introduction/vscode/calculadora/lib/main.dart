import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calculator',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColorDark: Colors.blueGrey,
      ),
      home: new CalculatorForm(),
    );
  }
}

class CalculatorForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CalculatorFormState();
}

class _CalculatorFormState extends State<CalculatorForm> {
  String result = "";
  final _currencies = ['USA', 'EURO', 'BOB'];
  String _currency = 'USA';
  final double _space = 5.0;
  TextEditingController distanceController = new TextEditingController();
  TextEditingController distanceByKmController = new TextEditingController();
  TextEditingController priceController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Style
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hello"),
        backgroundColor: Colors.blueAccent,
      ),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            new TextField(
                controller: distanceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Distancia (KM)",
                    hintText: "Ejm: 123",
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                )
              ),
            Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: TextField(
                    key: Key("distanceByKm"),
                    controller: distanceByKmController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Distancia por Kilometro",
                        hintText: "Ej: 50",
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))
                        )
                )
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Row(children: <Widget>[
                  Expanded(
                      child: TextField(
                          controller: priceController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "Precio ",
                              hintText: "Ej: 3.50",
                              labelStyle: textStyle,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))
                              )
                       )
                  ),
                  new Container(width: 16.0),
                  Expanded(
                      child: DropdownButton<String>(
                        items: _currencies.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value, child: new Text(value));
                        }).toList(),
                        value: _currency,
                        onChanged: (String value) {
                          _onDropdownChanged(value);
                        },
                      )
                  ),
                ])),
            new Row(children: <Widget>[
              new Expanded(
                  child: RaisedButton(
                color: Theme.of(context).primaryColorDark,
                textColor: Theme.of(context).primaryColorLight,
                onPressed: () {
                  setState(() {
                    result = _calculate();
                  });
                },
                child: new Text(
                  "Calcular",
                  textScaleFactor: 1.5,
                ),
              )),
              Container(width: _space * 5.0),
              Expanded(
                  child: RaisedButton(
                color: Theme.of(context).buttonColor,
                textColor: Theme.of(context).primaryColorDark,
                onPressed: () {
                  setState(() {
                    _reset();
                  });
                },
                child: new Text(
                  "Limpiar",
                  textScaleFactor: 1.5,
                ),
              ))
            ]),
            Padding(padding: EdgeInsets.only(top: 5.0), child: Text(result))
          ],
        ),
      ),
    );
  }

  _onDropdownChanged(String value) {
    setState(() {
      this._currency = value;
    });
  }

  String _calculate() {
    double _distance = double.parse(distanceController.text);
    double _price = double.parse(priceController.text);
    double _distanceByKm = double.parse(distanceByKmController.text);
    double _totalCost = _distance / _distanceByKm * _price;
    String _result =
        'El costo total es ' + _totalCost.toStringAsFixed(2) + ' ' + _currency;
    //String _result = 'El costo total es ${_totalCost.toStringAsFixed(2)} ${_currency}';
    return _result;
  }

  void _reset() {
    distanceByKmController.text = '';
    distanceController.text = '';
    priceController.text = '';
    setState(() => result = '');
  }
}

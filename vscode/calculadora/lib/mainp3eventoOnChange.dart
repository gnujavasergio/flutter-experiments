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
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Distancia",
                  hintText: "Ejemplo: 123",                  
                  labelStyle: textStyle,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                onChanged: (String string) {
                  setState(() {
                    result = string;
                  });
                }),
            new DropdownButton<String>(              
              items: _currencies.map((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: new Text(value));
              }).toList(),  
              value: _currency,
              onChanged: (String value) {
                _onDropdownChanged(value);
              },
            ),
            new Text(result)
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
}

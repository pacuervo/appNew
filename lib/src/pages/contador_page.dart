import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {
  final _textStyle = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatefulWidget'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks:', style: _textStyle),
            Text('$_conteo', style: _textStyle),
          ],
        )
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
          SizedBox(width: 30.0),
          FloatingActionButton(
            onPressed: _reset,
            child: Icon(Icons.exposure_zero)
          ),
          Expanded(child: SizedBox()),
          FloatingActionButton(
            onPressed: _sustraer,
            child: Icon(Icons.remove)
          ),
          SizedBox(width: 5.0),
          FloatingActionButton(
            onPressed: _agregar,
            child: Icon(Icons.add)
          ),
      ],
    );

  }

  void _agregar() {
    _conteo++;
    setState(() {
    });
  }

  void _sustraer() {
    _conteo--;
    setState(() {
    });
  }

  void _reset() {
    _conteo = 0;
    setState(() {
    });
  }


}
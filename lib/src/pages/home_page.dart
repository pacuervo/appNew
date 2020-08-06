import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final textStyle = new TextStyle(fontSize: 25);
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks:', style: textStyle),
            Text('$conteo', style: textStyle),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola mundo');
          //conteo = conteo + 1;
        },
      ),
    );
  }

}
import 'package:flutter/material.dart';

class ListaInfinitaDos extends StatelessWidget {

  String palabra;

  ListaInfinitaDos({this.palabra});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista infinita dos"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(this.palabra)
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:pruebas/tabs/persona.dart';

class PaginaDos extends StatelessWidget {

  var persona = Persona();

  PaginaDos({this.persona});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina dos"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(persona.nombre),
              Text(persona.apellidos),
              Text(persona.dni),
            ],
          ),
        ),
      ),
    );
  }
}
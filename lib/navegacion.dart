import 'package:flutter/material.dart';
import 'package:pruebas/pagina_dos.dart';
import 'package:pruebas/tabs/persona.dart';

class NavegacionPage extends StatelessWidget {

  var persona;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navegacion"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Pasar datos"),
          onPressed: () {
            persona = Persona(nombre: "jesus", apellidos: "jimenez", dni: "11111111");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PaginaDos(persona: persona)
              )
            );
          },
        ),
      ),
    );
  }
}
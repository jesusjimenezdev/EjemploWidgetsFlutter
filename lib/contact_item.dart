import 'package:flutter/material.dart';
import 'package:pruebas/tabs/persona.dart';

class ContactItem extends StatelessWidget {

  final Persona persona;

  ContactItem({this.persona});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(persona.nombre[0]),
      ),
      title: Text(persona.nombre),
      subtitle: Text(persona.dni),
    );
  }
}

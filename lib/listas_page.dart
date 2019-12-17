import 'package:flutter/material.dart';
import 'package:pruebas/contact_item.dart';
import 'package:pruebas/tabs/persona.dart';

class ListasPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listas"),
      ),
      body: ListView(
        children: buildPersonaList()
      ),
    );
  }

  buildList() {
    return <Persona> [
      Persona(nombre: "Pedro", apellidos: "Perez", dni: "123456"),
      Persona(nombre: "Marta", apellidos: "Perez", dni: "123456"),
      Persona(nombre: "Alfredo", apellidos: "Perez", dni: "123456"),
      Persona(nombre: "Miguel", apellidos: "Perez", dni: "123456"),
      Persona(nombre: "Juan", apellidos: "Perez", dni: "123456"),
      Persona(nombre: "Toni", apellidos: "Perez", dni: "123456"),
      Persona(nombre: "Atu", apellidos: "Perez", dni: "123456"),
      Persona(nombre: "Arancha", apellidos: "Perez", dni: "123456"),
      Persona(nombre: "Ana", apellidos: "Perez", dni: "123456"),
    ];
  }

  List<ContactItem> buildPersonaList() {
    return buildList().map<ContactItem>((persona) => ContactItem(persona: persona,)).toList();
  }
}
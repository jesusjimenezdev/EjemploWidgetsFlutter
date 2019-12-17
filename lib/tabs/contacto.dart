import 'package:flutter/material.dart';

class Contacto extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.contact_mail,
            size: 170,
            color: Colors.red,
          ),
          Text("Tercera tab")
        ],
      ),
    );
  }
}
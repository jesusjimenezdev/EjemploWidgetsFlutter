import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pruebas"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Pulsame"),
            onPressed: () {
              Navigator.pushNamed(context, 'pagina_dos');
            },
          ),
      ),
    );
  }
}
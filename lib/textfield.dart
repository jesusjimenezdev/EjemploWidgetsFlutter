import 'package:flutter/material.dart';

class CuadroTexto extends StatefulWidget {
  
  @override
  _CuadroTextoState createState() => _CuadroTextoState();
}

class _CuadroTextoState extends State<CuadroTexto> {
  
  String valor = "";
  final TextEditingController controller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            TextField(
              controller: controller,
              decoration: InputDecoration(hintText: "Escribe algo"),
              onSubmitted: (String value) {
                setState(() {
                  this.valor = value;
                  controller.text = "";  
                });
              },
            ),
            SizedBox(height: 20),
            Text(valor),
          ],
        ),
      ),
    );
  }
}
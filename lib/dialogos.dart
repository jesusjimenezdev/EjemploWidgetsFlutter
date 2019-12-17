import 'package:flutter/material.dart';

class DialogosPage extends StatefulWidget {
  
  @override
  _DialogosPageState createState() => _DialogosPageState();
}

class _DialogosPageState extends State<DialogosPage> {

  String valor = "";
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialogos"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            TextField(
              controller: controller,
              decoration: InputDecoration(hintText: "Escribe algo"),
              onChanged: (String value) {
                setState(() {
                  this.valor = value; 
                });
              },
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                child: Text("Ver alerta"),
                onPressed: () {
                  _alerta(context, this.valor);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _alerta(BuildContext context, String valor) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Prueba de alerta'),
        content: Text(valor),
        actions: <Widget>[
          FlatButton(
            child: Text('Aceptar'),
            onPressed: () {
              
            },
          ),
          FlatButton(
            child: Text('Cancelar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
}
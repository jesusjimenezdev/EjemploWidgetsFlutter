import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.home,
              size: 170,
              color: Colors.red,
            ),
            Text("Primera tab")
          ],
        ),
      ),
    );
  }
}
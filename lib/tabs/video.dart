import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.video_label,
            size: 170,
            color: Colors.red,
          ),
          Text("Segunda tab")
        ],
      ),
    );
  }
}
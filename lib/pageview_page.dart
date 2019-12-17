import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
      ),
      body: PageView(
        pageSnapping: true,
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Card(
              color: Colors.lightBlue,
              elevation: 4,
              margin: EdgeInsets.all(24),
              child: Center(
                child: Text("Card 1",
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Card(
              color: Colors.purpleAccent,
              elevation: 4,
              margin: EdgeInsets.all(24),
              child: Center(
                child: Text("Card 2",
                    style: TextStyle(color: Colors.blue, fontSize: 24)),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Card(
              color: Colors.pink,
              elevation: 4,
              margin: EdgeInsets.all(24),
              child: Center(
                child: Text("Card 3",
                    style: TextStyle(color: Colors.red, fontSize: 24)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

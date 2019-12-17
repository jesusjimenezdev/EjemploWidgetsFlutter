import 'package:flutter/material.dart';

class MenuLateralPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu")),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 40),
              child: DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage("assets/aepi.jpg")
                  )
                ), child: null,
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Item 1'),
              onTap: () {
                Navigator.popAndPushNamed(context, 'dialogos');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_backup_restore),
              title: Text('Item 2'),
              onTap: () {
                Navigator.popAndPushNamed(context, 'dialogos');
              },
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:pruebas/tabs/contacto.dart';
import 'package:pruebas/tabs/inicio.dart';
import 'package:pruebas/tabs/video.dart';

class TabsPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabs"),
            /*bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.ac_unit),
                ),
                Tab(
                  icon: Icon(Icons.access_alarm),
                ),
                Tab(
                  icon: Icon(Icons.access_time),
                )
              ],
            ),*/
        ),
        body: TabBarView(
          children: <Widget>[
            Inicio(),
            Video(),
            Contacto()
          ],
        ),
        bottomNavigationBar: Material(
          color: Colors.blue,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.ac_unit),
                  ),
                  Tab(
                    icon: Icon(Icons.access_alarm),
                  ),
                  Tab(
                    icon: Icon(Icons.access_time),
                  )
                ],
              ),
          ),
        ),
      ), 
    );
  }
}
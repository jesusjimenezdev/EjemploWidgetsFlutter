import 'package:flutter/material.dart';
import 'package:pruebas/dialogos.dart';
import 'package:pruebas/home_page.dart';
import 'package:pruebas/lista_infinita.dart';
import 'package:pruebas/lista_infinita_dos.dart';
import 'package:pruebas/listas_page.dart';
import 'package:pruebas/menu_lateral.dart';
import 'package:pruebas/navegacion.dart';
import 'package:pruebas/pageview_page.dart';
import 'package:pruebas/pagina_dos.dart';
import 'package:pruebas/tabs_page.dart';
import 'package:pruebas/textfield.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'page_view',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'pagina_dos': (BuildContext context) => PaginaDos(),
        'cuadro_texto': (BuildContext context) => CuadroTexto(),
        'dialogos': (BuildContext context) => DialogosPage(),
        'tabs': (BuildContext context) => TabsPage(),
        'navegacion': (BuildContext context) => NavegacionPage(),
        'menu_lateral': (BuildContext context) => MenuLateralPage(),
        'listas': (BuildContext context) => ListasPage(),
        'lista_infinita': (BuildContext context) => ListaInfinitaPage(),
        'lista_infinita_dos': (BuildContext context) => ListaInfinitaDos(),
        'page_view': (BuildContext context) => PageViewPage(),
      },
    );
  }
}
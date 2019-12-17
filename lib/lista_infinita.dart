import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

import 'lista_infinita_dos.dart';

class ListaInfinitaPage extends StatefulWidget {

  @override
  _ListaInfinitaPageState createState() => _ListaInfinitaPageState();
}

class _ListaInfinitaPageState extends State<ListaInfinitaPage> {
  final palabras = <WordPair>[];

  final palabrasSaved = <WordPair>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista infinita"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              Navigator.pushNamed(context, 'lista_infinita_dos');
            },
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          if (index >= palabras.length) {
            palabras.addAll(generateWordPairs().take(10));
          }
          return buildRow(palabras[index]);
        },
      ),
    );
  }

  Widget buildRow(WordPair wordPair) {
    return Column(
      children: <Widget>[
        ListTile(
          trailing: Icon(
            Icons.favorite
          ),
          title: Text(wordPair.asPascalCase),
          onTap: () {
            setState(() {
              palabrasSaved.add(wordPair);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ListaInfinitaDos(palabra: wordPair.toString())));
            });
          },
        ),
        Divider()
      ],
    );
  }
}

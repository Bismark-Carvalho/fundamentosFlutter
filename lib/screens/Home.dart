import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _nomes = ["Maria", "Joao", "Paulo"];
  var _nome = "Pressione o botão";
  final _random = Random();

  void _gerarNomes() {
    setState(() {
      _nome = _nomes[_random.nextInt(_nomes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 200,
                    width: 200,
                    child: Icon(
                      Icons.ac_unit,
                      size: 50,
                    )),
              ],
            ),
            Container(
                width: 300,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$_nome",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "Clique Abaixo para gerar um novo nome!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    RaisedButton(
                      onPressed: _gerarNomes,
                      color: Colors.green,
                      child: Text("NOVA NOME!"),
                      textColor: Colors.white,
                    ),
                  ],
                )),
          ],
        ));
  }
}

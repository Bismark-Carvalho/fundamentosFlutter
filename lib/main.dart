import 'package:flutter/material.dart';

import 'package:fundamentos2/screens/Home.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Nomes Aleatorios",
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Nomes Aleatorios"),
              ),
              backgroundColor: Colors.green,
            ),
            body: Home())),
  );
}

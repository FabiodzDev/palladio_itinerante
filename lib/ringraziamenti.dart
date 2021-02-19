import 'package:flutter/material.dart';

class Ringraziamenti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "RINGRAZIAMENTI",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.orange.shade500,
        brightness: Brightness.light, // in questo modo l'orario e la carica della batteria diventano bianche
      ),
      body: Container(),
    );
  }
}

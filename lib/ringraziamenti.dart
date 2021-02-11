import 'package:flutter/material.dart';

class Ringraziamenti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "RINGRAZIAMENTI",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange.shade700,
        brightness: Brightness
            .dark, // in questo modo l'orario e la carica della batteria diventano bianche
      ),
      body: Container(),
    );
  }
}

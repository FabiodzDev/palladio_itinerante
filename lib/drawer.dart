import 'package:flutter/material.dart';
import 'package:palladioitinerante/ringraziamenti.dart';

import 'chisiamo.dart';
import 'contatti.dart';
import 'inviaemail.dart';

class Drawerpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image.asset('images/logo.png'),


            decoration: BoxDecoration(
              color: Colors.orange.shade500,
            ),
          ),
          ListTile(
            title: Text('CHI SIAMO', style: TextStyle(
              fontSize: 20
            ),),
            onTap: () {

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChiSiamo()));
              // Update the state of the app.
              // ...
            },
          ),

          ListTile(
            title: Text('ISCRIVITI', style: TextStyle(
              fontSize: 20
            ),),
            onTap: () {
              // Update the state of the app.
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('GALLERIA', style: TextStyle(
                fontSize: 20
            ),),
            onTap: () {
              // Update the state of the app.
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SendEmail()));
            },
          ),
          ListTile(
            title: Text('CONTATTI', style: TextStyle(
                fontSize: 20
            ),),
            onTap: () {
              // Update the state of the app.
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Contatti()));
            },
          ),
        ],
      ),
    );
  }
}

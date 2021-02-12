import 'package:flutter/material.dart';
import 'package:palladioitinerante/ringraziamenti.dart';

class Drawerpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'L\'associazione',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w600
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow.shade500,
            ),
          ),
          ListTile(
            title: Text('Chi siamo', style: TextStyle(
              fontSize: 20
            ),),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Dove siamo', style: TextStyle(
                fontSize: 20
            ),),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Iscrivi con noi', style: TextStyle(
              fontSize: 20
            ),),
            onTap: () {
              // Update the state of the app.
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Galleria', style: TextStyle(
                fontSize: 20
            ),),
            onTap: () {
              // Update the state of the app.
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Ringraziamenti()));
            },
          ),
        ],
      ),
    );
  }
}

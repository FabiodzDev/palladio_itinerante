import 'package:flutter/material.dart';

class Contatti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CONTATTI",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        brightness: Brightness
            .light, // in questo modo l'orario e la carica della batteria diventano bianche

        centerTitle: true,
        backgroundColor: Colors.orange.shade500,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 10,),

            ListTile(
              leading: Icon(Icons.mail, size: 30),
              title: Text('info@palladioitinerante.com'),
              subtitle: Text('Email Generica'),
            ),
          ],
        ),
      ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.mail, size: 30),
                    title: Text('pierluigi@palladioitinerante.com'),
                    subtitle: Text('Presidente'),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.mail, size: 30),
                    title: Text('segretario@palladioitinerante.com'),
                    subtitle: Text('Segretario'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.people, size: 30),
                    title: Text('Liona Bike Team'),
                    subtitle: Text('Gruppo Facebook'),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.people, size: 30),
                    title: Text('Liona Bike Team'),
                    subtitle: Text('Pagina Facebook'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),

            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.photo, size: 30),
                    title: Text('LionaBikeTeam'),
                    subtitle: Text('Instagram'),
                  ),
                ],
              ),
            ),
          ],

        ),
      ),

    );
  }
}

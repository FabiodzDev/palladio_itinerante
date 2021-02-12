import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appuntamenti.dart';


Appuntamenti appuntamentodifficolta = Appuntamenti.difficolta();

class Calendario {
  
  List calendario = [
    Appuntamenti(
        data: DateTime.utc(2021, 03, 21),
        luogo: "Chiampo",
        partenza: "Sede",
        tipoBici: "City Bike",
        difficolta: LivelloDifficolta.facile),
    Appuntamenti(
        data: DateTime.utc(2021, 03, 28),
        luogo: "Giro del Lago di Garda",
        partenza: "Sede",
        tipoBici: "Bici da corsa",
        difficolta: LivelloDifficolta.difficile),
    Appuntamenti(
        data: DateTime.utc(2021, 03, 28),
        luogo: "Val Liona",
        partenza: "Sede",
        tipoBici: "City Bike",
        difficolta: LivelloDifficolta.facile,
        note:
            "Organizzata dal Cai di Lonigo con la partecipazione del Liona Bike Team"),
  ];

  Widget caricaCalendario() {
    List calendarioWidget = <Widget>[];

    for (int i = 0; i < calendario.length; i++) {
      calendarioWidget.add(Column(
        children: [
          Text(calendario[i].luogo),
          Text(calendario[i].partenza),
          Text(calendario[i].tipoBici),
          Text(appuntamentodifficolta.convertiDifficolta(calendario[i].difficolta)),
          Text(calendario[i].note),
          SizedBox(
            height: 10,
          )
        ],
      ));
      print("CIAO $i");
    }
    ;

    //print(calendarioWidget);
    return Container(
        child: ListView(
      children: calendarioWidget,
    ));
  }
}

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
        partenza: "Con mezzi propri",
        tipoBici: "Bici da corsa",
        difficolta: LivelloDifficolta.difficile),
    Appuntamenti(
        data: DateTime.utc(2021, 03, 31),
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
      var dataSplit = calendario[i].data.toString().split(" ");
      print(dataSplit);

      var giornoSplit = dataSplit[0].split("-");
      print(giornoSplit);

      var dataConvertita =
          giornoSplit[2] + "/" + giornoSplit[1] + "/" + giornoSplit[0];
      // String dataSuperconvertita = dataConvertita.toString();

      calendarioWidget.add(Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.yellow.shade100,
          border: Border.all(

            color: Colors.yellow,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(width: 150, child: Text("Data:   $dataConvertita")),
                SizedBox(
                  width: 20,
                ),
                Text(calendario[i].luogo),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                    child: Text("Partenza: " + calendario[i].partenza)),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text("Tipo bici:  " + calendario[i].tipoBici),
                SizedBox(
                  width: 20,
                ),
                Text("Difficoltà:   " + appuntamentodifficolta
                    .convertiDifficolta(calendario[i].difficolta)),

              ],
            ),

            SizedBox(
              height: 10,
            ),

            Text("Note:   " + calendario[i].note),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ));
    }
    ;

    //print(calendarioWidget);
    return Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: calendarioWidget,
        ));
  }
}

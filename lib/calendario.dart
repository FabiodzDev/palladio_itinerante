

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appuntamenti.dart';
import 'dettagliouscita.dart';


Appuntamenti appuntamentodifficolta = Appuntamenti.difficolta();

class Calendario extends StatelessWidget {




  List calendario = [
    Appuntamenti(
        data: DateTime.utc(2021, 03, 21),
        luogo: "CHIAMPO",
        partenza: "Sede",
        tipoBici: "City Bike",
        difficolta: LivelloDifficolta.facile),
    Appuntamenti(
        data: DateTime.utc(2021, 03, 28),
        luogo: "GIRO DEL LAGO DI GARDA",
        partenza: "Con mezzi propri",
        tipoBici: "Bici da corsa",
        difficolta: LivelloDifficolta.difficile),
    Appuntamenti(
        data: DateTime.utc(2021, 04, 02),
        luogo: "VAL LIONA",
        partenza: "Sede",
        tipoBici: "City Bike",
        difficolta: LivelloDifficolta.facile,
        note:
            "Organizzata dal Cai di Lonigo con la partecipazione del Liona Bike Team"),
    Appuntamenti(
        data: DateTime.utc(2021, 04, 11),
        luogo: "NEL CUORE DEI COLLI EUGANEI",
        partenza: "Con mezzi propri",
        tipoBici: "MTB",
        difficolta: LivelloDifficolta.mediofacile),
    Appuntamenti(
        data: DateTime.utc(2021, 04, 25),
        luogo: "SOAVE - LA VECIA VIA DELLA LANA",
        partenza: "Sede",
        tipoBici: "City Bike",
        difficolta: LivelloDifficolta.mediofacile),
    Appuntamenti(
        data: DateTime.utc(2021, 05, 09),
        luogo: "SALITA STORICA - IL MONTE GRAPPA",
        partenza: "Con mezzi propri",
        tipoBici: "Bici da corsa",
        difficolta: LivelloDifficolta.difficile),
    Appuntamenti(
        data: DateTime.utc(2021, 05, 16),
        luogo: "GIRO GEMELLAGGIO TEAM ESTE BIKE ZORDAN",
        partenza: "Con mezzi propri",
        tipoBici: "Bici da corsa, City Bike, MTB",
        difficolta: LivelloDifficolta.facile),
    Appuntamenti(
        data: DateTime.utc(2021, 05, 23),
        luogo: "ARZIGNANO - VALDAGNO",
        partenza: "Con mezzi propri",
        tipoBici: "Bici da corsa, City Bike, MTB",
        difficolta: LivelloDifficolta.facile,
        note:
            "Organizzata dal Cai di Lonigo con la partecipazione del Liona Bike Team"),
    Appuntamenti(
        data: DateTime.utc(2021, 06, 13),
        luogo: "MOSSANO - VALLE DEI MULINI",
        partenza: "Con mezzi propri",
        tipoBici: "City Bike",
        difficolta: LivelloDifficolta.mediofacile),
    Appuntamenti(
        data: DateTime.utc(2021, 06, 18),
        luogo: "PIZZABIKE NOTTURNA",
        partenza: "Sede",
        tipoBici: "City Bike, MTB",
        difficolta: LivelloDifficolta.facile),
    Appuntamenti(
        data: DateTime.utc(2021, 06, 18),
        luogo: "PIZZABIKE NOTTURNA",
        partenza: "Sede",
        tipoBici: "City Bike, MTB",
        difficolta: LivelloDifficolta.facile),
    Appuntamenti(
        data: DateTime.utc(2021, 06, 20),
        luogo: "PAGANELLA BEAR TRAILS",
        partenza: "Con mezzi propri",
        tipoBici: "Enduro, MTB",
        difficolta: LivelloDifficolta.difficile),
    Appuntamenti(
        data: DateTime.utc(2021, 06, 20),
        luogo: "RONCA\' - MONTECCHIA",
        partenza: "Sede",
        tipoBici: "City Bike",
        difficolta: LivelloDifficolta.mediofacile,
    note: "Organizzata dal Cai di Lonigo con la partecipazione del Liona Bike Team"),
    Appuntamenti(
        data: DateTime.utc(2021, 07, 04),
        luogo: "LAGO DI FIMON - OASI DEI RAPACI",
        partenza: "Con mezzi propri",
        tipoBici: "City Bike, MTB",
        difficolta: LivelloDifficolta.mediofacile),
    Appuntamenti(
        data: DateTime.utc(2021, 07, 11),
        luogo: "VALLE DEL CHIAMPO",
        partenza: "Sede",
        tipoBici: "City Bike",
        difficolta: LivelloDifficolta.mediofacile,
    note: "Organizzata dal Cai di Lonigo con la partecipazione del Liona Bike Team"),
    Appuntamenti(
        data: DateTime.utc(2021, 07, 18),
        luogo: "CITTA\' DI ROCCIA - ALTOPIANO DI ASIAGO",
        partenza: "Con mezzi propri",
        tipoBici: "MTB",
        difficolta: LivelloDifficolta.difficile,
    note: "Organizzata dal Cai di Lonigo con la partecipazione del Liona Bike Team"),
    Appuntamenti(
        data: DateTime.utc(2021, 07, 18),
        luogo: "IL LAGO DI GARDA E IL MONTE BALDO",
        partenza: "Con mezzi propri",
        tipoBici: "MTB",
        difficolta: LivelloDifficolta.difficile),
    Appuntamenti(
        data: DateTime.utc(2021, 09, 05),
        luogo: "VICENZA",
        partenza: "Sede",
        tipoBici: "City Bike",
        difficolta: LivelloDifficolta.mediofacile,
    note: "Organizzata dal Cai di Lonigo con la partecipazione del Liona Bike Team"),
    Appuntamenti(
        data: DateTime.utc(2021, 09, 08),
        luogo: "MONTE BERICO",
        partenza: "Sede",
        tipoBici: "City Bike",
        difficolta: LivelloDifficolta.facile),
    Appuntamenti(
        data: DateTime.utc(2021, 09, 12),
        luogo: "MONTE PASUBIO",
        partenza: "Con mezzi propri",
        tipoBici: "MTB",
        difficolta: LivelloDifficolta.difficile),
    Appuntamenti(
        data: DateTime.utc(2021, 09, 19),
        luogo: "POIANA DI GRANFION - TREVISO",
        partenza: "Con mezzi propri",
        tipoBici: "MTB",
        difficolta: LivelloDifficolta.difficile),
    Appuntamenti(
        data: DateTime.utc(2021, 09, 26),
        luogo: "GIRO GEMELLAGGIO TEAM S.C. BARBIERI (VALEGGIO)",
        partenza: "Con mezzi propri",
        tipoBici: "City Bike, MTB",
        difficolta: LivelloDifficolta.facile),
    Appuntamenti(
        data: DateTime.utc(2021, 10, 10),
        luogo: "ARQUA\' PETRARCA - FESTA DELLE GIUGGIOLE",
        partenza: "Con mezzi propri",
        tipoBici: "City Bike",
        difficolta: LivelloDifficolta.facile),
    Appuntamenti(
        data: DateTime.utc(2021, 10, 17),
        luogo: "GITA DI CHIUSURA A SORPRESA",
        partenza: "Sede",
        tipoBici: "City Bike, MTB",
        difficolta: LivelloDifficolta.facile),
  ];


  @override
  Widget build(BuildContext context) {
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
        padding: EdgeInsets.all(7),
        margin: EdgeInsets.only(
          bottom: 15,
        ),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border.all(
            color: Colors.blueGrey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Uscita nr. " + (i+1).toString() + "/2021"),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$dataConvertita",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              calendario[i].luogo,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                color: Colors.orange.shade900,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                    child: Text(
                  "Partenza:   " + calendario[i].partenza,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text("Tipo bici:     " + calendario[i].tipoBici),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text("Difficoltà:    " +
                appuntamentodifficolta
                    .convertiDifficolta(calendario[i].difficolta)),
            SizedBox(
              height: 10,
            ),
            Text("Note:   " + calendario[i].note),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  color: Colors.orange.shade900,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DettaglioUscita(iduscita: i, luogo: calendario[i].luogo, data: dataConvertita, partenza: calendario[i].partenza, tipoBici: calendario[i].tipoBici,),
                      ),
                    );
                  },
                  child: Text("ISCRIVITI"),
                ),
              ],
            ),
          ],
        ),
      ));



    }
    ;



    //print(calendarioWidget);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ATTIVITA\'',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black54,
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: calendarioWidget,
          )),
    );
  }
}




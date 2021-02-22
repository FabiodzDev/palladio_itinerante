import 'package:flutter/material.dart';

class ChiSiamo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CHI SIAMO",
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
        child: ListView(
          children: [
            Text(
              "Siamo l\'Associazione Palladio Itinerante Liona Bike Team che da oltre 10 anni promuove l\'uso della bici abbracciando tutte le discipline (Mountain Bike, City Bike e bici da corsa).",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 17),
            ),
            Text(
              "Proponiamo la conoscenza del territorio dei Colli Berici, con uscite di carattere paesaggistico, storico, culturale per tutti, con particolare attenzione alle famiglie.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "La nostra sede si trova in Viale della Repubblica, 12 a Lonigo (ex bocciodromo comunale)",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "DIRETTIVO Triennio",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.orange.shade800,
                  fontWeight: FontWeight.w900),
            ),
            Text(
              "2020-2021-2022",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange.shade800,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 5,),
            Table(
              //textDirection: TextDirection.rtl,
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              border:TableBorder.all(width: 1.0,color: Colors.black54),
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),

                  children: [
                    Text("NOMINATIVO", textScaleFactor: 1.2, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w900),),
                    Text("RUOLO", textScaleFactor: 1.2, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w900),),
                  ]
                ),
                TableRow(
                    children: [
                      Text("Benetti Pierluigi", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                      Text("Presidente", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Rosin Paolo", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                      Text("Vice Presidente", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Benetti Simone", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                      Text("Tesoriere e Segretario", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Magnaboso Loris", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                      Text("Consigliere", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Mizzon Mattia", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                      Text("Consigliere", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Pasqualotto Carlo", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                      Text("Consigliere", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Pertile Costantino", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                      Text("Consigliere", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Vidotto Ivana", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                      Text("Consigliere", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                    ]
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text(
              "COMITATO MTB E BICI DA CORSA",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange.shade800,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 5,),
            Table(
              //textDirection: TextDirection.rtl,
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              border:TableBorder.all(width: 1.0,color: Colors.black54),
              children: [
                TableRow(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                    ),

                    children: [
                      Text("NOMINATIVO", textScaleFactor: 1.2, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w900),),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Benetti Simone", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Magnabosco Loris", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Mizzon Mattia", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                    ]
                ),

              ],
            ),
            SizedBox(height: 30,),
            Text(
              "COMITATO CITY BIKE",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange.shade800,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 5,),
            Table(
              //textDirection: TextDirection.rtl,
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              border:TableBorder.all(width: 1.0,color: Colors.black54),
              children: [
                TableRow(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                    ),

                    children: [
                      Text("NOMINATIVO", textScaleFactor: 1.2, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w900),),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Pasqualotto Carlo", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Pertile Costantino", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Vidotto Ivana", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                    ]
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

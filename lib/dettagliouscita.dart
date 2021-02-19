import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class DettaglioUscita extends StatelessWidget {

  int iduscita;
  String luogo;
  String data;
  String partenza;
  String tipoBici;

  DettaglioUscita({Key key, @required this.iduscita, @required this.luogo, @required this.data, @required this.partenza, @required this.tipoBici}) : super(key: key);


  bool isHTML = false;
  final _recipientController = TextEditingController(
    text: 'simone@palladioitinerante.com',
  );

  Future<void> send() async {
    final Email email = Email(
      body: "Ciao, do la mia adesione a partecipare all'uscita a $luogo, il giorno $data, con partenza da $partenza e tipo bici $tipoBici",
      subject: "ADESIONE USCITA",
      recipients: [_recipientController.text],
      //attachmentPaths: attachments,
      isHTML: isHTML,
    );
    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      platformResponse = error.toString();
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DETTAGLIO USCITA",
      ),
    ),
    body: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("Riepilogo dati", style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),),),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Text("Ciao,", style: TextStyle(fontSize: 17),),
                Expanded(child: Container()),
              ],
            ), ),
          Row(
            children: [
              Text("stai per confermare la tua presenza a:", style: TextStyle(fontSize: 17),),
              Expanded(child: Container()),
            ],
          ),
          SizedBox(height: 20,),
          Text(luogo, style: TextStyle(fontSize: 25),),
          SizedBox(height: 10,),
          Text("il " + data, style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          Text("Partenza: " + partenza, style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          Text("Tipo Bici: " + tipoBici, style: TextStyle(fontSize: 20),),
          SizedBox(height: 40,),
          Row(
            children: [
              Text("Cliccando il tasto INVIA ti verrà ", textAlign: TextAlign.justify, style: TextStyle(fontSize: 17),),
              Expanded(child: Container()),

            ],
          ),
          Row(
            children: [
              Text("preimpostata un'email che dovrai",	textAlign: TextAlign.justify, style: TextStyle(fontSize: 17),),
             //r Expanded(child: Container()),

            ],
          ),
          Row(
            children: [
              Text("solamente spedirci. Semplice vero? ", textAlign: TextAlign.justify, style: TextStyle(fontSize: 17),),
              Expanded(child: Container()),

            ],
          ),
          SizedBox(height: 20,),




          FlatButton(
              color: Colors.orange.shade900,
              textColor: Colors.white,
              onPressed: send,
              child: Text("INVIA"),
            ),

        ],
      ),
    ),
    );
  }
}


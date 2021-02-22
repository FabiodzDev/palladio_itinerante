import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:flutter/material.dart';

import 'email.dart';

class SendEmail extends StatefulWidget {
  String luogo;
  String data;
  String partenza;
  String tipoBici;


  SendEmail(
      {Key key,
      @required this.luogo,
      @required this.data,
      @required this.partenza,
      @required this.tipoBici})
      : super(key: key);

  @override
  _SendEmailState createState() => _SendEmailState(luogo, data, partenza, tipoBici);
}

class _SendEmailState extends State<SendEmail> {
  String luogo = "LUOGO";
  String data = "DATA";
  String partenza = "PARTENZA";
  String tipoBici = "BICI";
  String numeroTessera = "VUOTA";
  String statoinvio = "";
  String nomeEcognome = "VUOTA";

  Mail mail = Mail();

  _SendEmailState(this.luogo, this.data, this.partenza, this.tipoBici);


  generaStato(){

    if(numeroTessera == "VUOTA" || nomeEcognome == "VUOTA"){
      setState(() {
        statoinvio = "ENTRAMBI I CAMPI SONO OBBLIGATORI. INVIO NON ESEGUITO";
      });
    } else {

      setState(() {
        statoinvio = "ISCRIZIONE INVIATA. GRAZIE";
      });
    }

  }


  sendemailuscita() async {
    String username = mail.mail;
    String password = mail.passwordEmail;

    final smtpServer = gmail(username, password);
    // Use the SmtpServer class to configure an SMTP server:
    // final smtpServer = SmtpServer('smtp.domain.com');
    // See the named arguments of SmtpServer for further configuration
    // options.

    // Create our message.
    final message = Message()
      ..from = Address(username, 'Tesserato nr. $numeroTessera')
      ..recipients.add('fabiodalzovo@gmail.com')
      //..ccRecipients.addAll(['passionerunners@gmail.com'])
      //..bccRecipients.add(Address('bccAddress@example.com'))
      ..subject =
          'L\'utente con nr. di tessera $numeroTessera $nomeEcognome si è iscritto all\'uscita $luogo  $data  $partenza  $tipoBici.\nApp Liona Bike Team'
      // ..text = 'L\'utente con nr. di tessera $numeroTessera si è iscritto all\'uscita $luogo  $data  $partenza  $tipoBici.\nApp Liona Bike Team'
      ..html = "<h1>Iscrizione</h1>\n<p>C'è un nuovo iscritto </p>";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }

    // DONE

    // Create a smtp client that will persist the connection
    var connection = PersistentConnection(smtpServer);

    // Send the first message

    await connection.send(message);

    generaStato();

    // close the connection
    await connection.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INVIA ISCRIZIONE"),
      ),
      body: Container(
        padding: EdgeInsets.all(17),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Center(
              child: Text(
                "RIEPILOGO DATI",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Text(
                    "Ciao,",
                    style: TextStyle(fontSize: 17),
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "stai per confermare la tua presenza a:",
                  style: TextStyle(fontSize: 17),
                ),
                Expanded(child: Container()),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              luogo ,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "il " + data,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Partenza: " + partenza,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Tipo Bici: " + tipoBici,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Text("Entrambi i campi sono obbligatori:", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),

            SizedBox(height: 5,),
            TextField(
              obscureText: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  labelText: "Digita il numero della tua tessera",),
              onSubmitted: (submittedValue) {},
              onChanged: (newValue) {
                numeroTessera = newValue;
                ;
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  labelText: "Scrivi il tuo nome e cognome"),
              onSubmitted: (submittedValue) {},
              onChanged: (nomeCognome) {
                nomeEcognome = nomeCognome;
                ;
              },
            ),
            SizedBox(height: 10,),
            SizedBox(height: 10,),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: FlatButton(
                    color: Colors.orange.shade900,
                    textColor: Colors.white,
                    onPressed: sendemailuscita,
                    child: Text("INVIA ISCRIZIONE"),
                  ),
                ),
                SizedBox(height: 20,),
                Text(statoinvio, style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

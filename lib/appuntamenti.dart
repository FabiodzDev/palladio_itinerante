import 'package:flutter/cupertino.dart';

enum LivelloDifficolta {
  facile,
  mediofacile,
  difficile,
}

class Appuntamenti {
  DateTime data;
  String luogo;
  String partenza;
  String tipoBici;
  LivelloDifficolta difficolta;
  String note;


  Appuntamenti({ @required DateTime data, @required String luogo, @required String partenza, @required String tipoBici, @required LivelloDifficolta difficolta, String note = ""}){
    this.data = data;
    this.luogo = luogo;
    this. partenza = partenza;
    this. tipoBici = tipoBici;
    this.difficolta = difficolta;
    this.note = note;

  }

  Appuntamenti.difficolta();


  String convertiDifficolta(LivelloDifficolta livelloDifficolta){

    if (livelloDifficolta == LivelloDifficolta.facile){
      return "Facile";
    }

    if (livelloDifficolta == LivelloDifficolta.mediofacile){
      return "Medio/Facile";
    }

    if (livelloDifficolta == LivelloDifficolta.difficile){
      return "Difficile";
    }

  }




}
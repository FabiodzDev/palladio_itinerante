import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;





class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {




//  Future getData() async {
//    http.Response response = await http.get('http://www.sanoegustoso.com/mysqljson.php');
//
//    if (response.statusCode == 200){
//      String data = response.body;
//      print(data);
//
//      var decodeData = jsonDecode(data);
//      var id = decodeData[0]['ID'];
//      print(id);
//      return id;
//    } else {
//      print(response.statusCode);
//    }
//  }


    @override
  Widget build(BuildContext context) {

      //getData();


      return SafeArea(
      child: Container(),
    );
  }
}

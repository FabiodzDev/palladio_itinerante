import 'package:flutter/material.dart';
import 'package:palladioitinerante/calendariouscite.dart';
import 'package:palladioitinerante/ringraziamenti.dart';
import 'package:palladioitinerante/splash.dart';
import 'drawer.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Palladio Itinerante',
      initialRoute: '/splash',            // pagina iniziale dell'app settata qui sotto, dove setto tutte le pagine che ho
      routes: { // elenco delle pagine della mia app
        '/splash' : (context) => Splash(),
        '/' : (context) => MyHomePage(),

      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryIconTheme: IconThemeData(color: Colors.black), // use this

        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage()  Nel caso avessi più pagine da navigare, non uso il parametro home ma InitialRoute
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {



  List <Widget> myPages = [Home(), Home(), CalendarioUscite()];
  int selectedIndex = 0;



  @override
  Widget build(BuildContext context) {



    return Scaffold(
      drawer: Drawerpage(),
      resizeToAvoidBottomPadding: false,  // DOVREBBE NON MANDARE IN OVERFLOW I BOTTONI
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: (){    // ESCE UN ALERT MESSAGE
          showDialog(context: context,
              builder: (BuildContext context){
                return AlertDialog(
                  title: Text("PAGINE SOCIAL"),
                  content: Text("Non dimenticarti di seguirmi sulla mia pagina Facebook e sul canale Youtube"),
                );
              }
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.orange,
                image: DecorationImage(
                  image: AssetImage('images/logo.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(10))
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      appBar: AppBar(
          title: Text('PALLADIO ITINERANTE', style: TextStyle(
          color: Colors.black,
        ),),
        brightness: Brightness.light, // in questo modo l'orario e la carica della batteria diventano bianche

        centerTitle: true,
        backgroundColor: Colors.yellow.shade500,
        actions: [    IconButton(
          color: Colors.red,
          alignment: Alignment.center,
          iconSize: 30,
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Ringraziamenti()));
          },
          icon: Icon(
            Icons.favorite,
          ),
        ),
        ],
      ),
      // drawer: menuDrawer(),
      body: myPages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex = index;
            print(selectedIndex);
          });
        } ,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.yellow,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "HOME",
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "6 ORE ",
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "ATTIVITA'",
          ),

        ],
      ),
    );
  }
}

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
      initialRoute:
          '/splash', // pagina iniziale dell'app settata qui sotto, dove setto tutte le pagine che ho
      routes: {
        // elenco delle pagine della mia app
        '/splash': (context) => Splash(),
        '/': (context) => MyHomePage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryIconTheme: IconThemeData(color: Colors.black), // use this

        primarySwatch: Colors.orange,
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
  List<Widget> myPages = [Home(), CalendarioUscite(), Home()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawerpage(),
      resizeToAvoidBottomPadding:
          false, // DOVREBBE NON MANDARE IN OVERFLOW I BOTTONI
      backgroundColor: Colors.white,


      appBar: AppBar(
        title: Text(
          'LIONA BIKE TEAM',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        brightness: Brightness
            .light, // in questo modo l'orario e la carica della batteria diventano bianche

        centerTitle: true,
        backgroundColor: Colors.orange.shade500,
        actions: [
          IconButton(
            color: Colors.orange.shade900,
            alignment: Alignment.center,
            iconSize: 30,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Ringraziamenti()));
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
        onTap: (index) {
          setState(() {
            selectedIndex = index;
            print(selectedIndex);
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black54,
        selectedItemColor: Colors.orange,
        selectedFontSize: 14,
        unselectedFontSize: 14,
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
              Icons.library_books_outlined,
            ),
            label: "ATTIVITA'",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.timer,
            ),
            label: "6 ORE ",
          ),
        ],
      ),
    );
  }
}

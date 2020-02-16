import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/loading.dart';
import 'pages/people.dart';
import 'pages/person.dart';
import 'pages/news.dart';


void main() => runApp(BrainApp());

class BrainApp extends StatefulWidget {
  @override
  _BrainAppState createState() => _BrainAppState();
}

class _BrainAppState extends State<BrainApp> {
  @override
  int _selectedPage = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;

    });
  }

  final _pageOptions = [
    Home(),
    People(),
    News(),
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      routes: {
        '/home': (context) => Home(),
        '/person': (context) => Person(),
      },
      home: Scaffold(
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(child: child, opacity: animation);
          },
          child: (_pageOptions[_selectedPage]),
        ),
        bottomNavigationBar: SizedBox(
          height: 78,
          child: BottomNavigationBar(
            iconSize: 20.0,
//            unselectedFontSize: 0,
//            selectedFontSize: 10,
            selectedItemColor: Color.fromRGBO(255, 0, 150, 1),
            backgroundColor: Color.fromRGBO(0, 240, 240, 1),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                title: Text('People'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.live_tv),
                title: Text('News'),
              ),
            ],
            currentIndex: _selectedPage,
            onTap: _onItemTapped,
          ),
      )
      ),

    );
  }
}




//class BrainApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: HomePage(),
//    );
//  }
//}
//
//
//
//class HomePage extends StatefulWidget {
//  HomePage({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  _HomePageState createState() => _HomePageState();
//}
//
//class _HomePageState extends State<HomePage> {
//  int _selectedIndex = 0;
//
//  void _onItemTapped(int index) {
//    setState(() {
//      _selectedIndex = index;
//    });
//    print(this._selectedIndex);
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//
//    return Scaffold(
//
//      body: Center(
//
//        child: Column(
//
//          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'WE',
//              textAlign: TextAlign.left,
//              style: TextStyle(fontFamily: 'Avenir-Black', fontWeight: FontWeight.w700, fontSize: 90, color: Color.fromRGBO(255, 0, 150, 1)),
//            ),
//            Text(
//              'ARE',
//              style: TextStyle(fontFamily: 'Avenir-Black', fontWeight: FontWeight.w700, fontSize: 90, color: Color.fromRGBO(0, 240, 240, 1)),
//            ),
//            Text(
//              'BRAIN',
//              style: TextStyle(fontFamily: 'Avenir-Black', fontWeight: FontWeight.w700, fontSize: 90, color: Color.fromRGBO(255, 239, 0, 1)),
//            ),
//          ],
//        ),
//
//      ),
//      bottomNavigationBar: BottomNavigationBar(
//        iconSize: 30.0,
//        selectedItemColor: Color.fromRGBO(255, 0, 150, 1),
//        backgroundColor: Color.fromRGBO(0, 240, 240, 1),
//        items: const <BottomNavigationBarItem>[
//          BottomNavigationBarItem(
//            icon: Icon(Icons.home),
//            title: Text('Home'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.supervised_user_circle),
//            title: Text('People'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.live_tv),
//            title: Text('News'),
//          ),
//        ],
//        currentIndex: _selectedIndex,
//        onTap: _onItemTapped,
//      ),
//
//
//
//    );
//  }
//}

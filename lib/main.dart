import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print(this._selectedIndex);
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'WE',
              textAlign: TextAlign.left,
              style: TextStyle(fontFamily: 'Avenir-Black', fontWeight: FontWeight.w700, fontSize: 90, color: Color.fromRGBO(255, 0, 150, 1)),
            ),
            Text(
              'ARE',
              style: TextStyle(fontFamily: 'Avenir-Black', fontWeight: FontWeight.w700, fontSize: 90, color: Color.fromRGBO(0, 240, 240, 1)),
            ),
            Text(
              'BRAIN',
              style: TextStyle(fontFamily: 'Avenir-Black', fontWeight: FontWeight.w700, fontSize: 90, color: Color.fromRGBO(255, 239, 0, 1)),
            ),
          ],
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.0,
//        height: Size.fromHeight(30),
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),



    );
  }
}

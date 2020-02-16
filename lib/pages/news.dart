import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _PeopleNews createState() => _PeopleNews();
}

class _PeopleNews extends State<News> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('News'),
        centerTitle: true,
        elevation: 2,
      ),
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

    );
  }
}

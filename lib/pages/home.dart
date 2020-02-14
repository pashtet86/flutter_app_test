import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    Navigator.pushNamed(context, '/people');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: Text('home page')),

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.0,
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

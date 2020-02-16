import 'package:flutter/material.dart';
import 'package:flutter_app_test/helpers/utils.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          backgroundColor: Colors.blue,
          title: Text('Home page'),
          centerTitle: true,
          elevation: 2,
        ),
        Container(
          child: Text('bla'),
        )
      ],


    );
  }
}

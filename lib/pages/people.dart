import 'package:flutter/material.dart';

class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {

  List<String> people = [
    'Pashtet',
    'Tur',
    'Kozhokar',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('People'),
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: Column(
          children: people.map((person) => Text(person)).toList(),
        ),
      ),

    );
  }
}

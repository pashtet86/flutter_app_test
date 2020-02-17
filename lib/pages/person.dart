import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  @override
  _PersonState createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: Text('asdasd')),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Person'),
        centerTitle: true,
        elevation: 2,
      ),

    );
  }
}

import 'package:flutter/material.dart';

class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {

  List<String> people = [
    'Pavel Bazhenov',
    'Pavel Shishko',
    'Pavel Kozhokar',
  ];

  Widget personTemplate(person){
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: <Widget>[
            Image.network('https://picsum.photos/id/237/50/50'),
            SizedBox(width: 20),
            Column(
//              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  person,
                  style: TextStyle( fontSize: 16.0),
                ),
                Text(
                  'Role',
                  style: TextStyle( fontSize: 14.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Text(
              'Kiev',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            )

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('People'),
        centerTitle: true,
        elevation: 2,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: people.map((person) => personTemplate(person)).toList(),
      ),

    );
  }
}

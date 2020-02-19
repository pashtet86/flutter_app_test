import 'package:flutter/material.dart';
import '../interfaces/person.dart';
import 'person_item.dart';

class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {

  void _goToPerson() {
    Navigator.pushNamed(context, '/person');
  }

  List<Person> people = [
    Person(name: 'Pavel Bazhenov', position: 'man', city: "Kiev"),
    Person(name: 'Pavel Shishko', position: 'man', city: "Kiev"),
    Person(name: 'Pavel Kozhokar', position: 'man', city: "Kiev"),
  ];

  Widget personTemplate(person) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: InkWell(
          onTap: _goToPerson,
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
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    'Role',
                    style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Spacer(flex: 2),
              Text(
                'Kiev',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              )

            ],
          ),
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
          children: people.map((person) => PersonItem(person: person)).toList(),
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

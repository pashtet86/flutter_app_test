import 'package:flutter/material.dart';
import '../interfaces/person.dart';

class PersonItem extends StatelessWidget {

  final Person person;
  PersonItem({this.person});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: InkWell(
//          onTap: _goToPerson,
          child: Row(
            children: <Widget>[
              Image.network('https://picsum.photos/id/237/50/50'),
              SizedBox(width: 20),
              Column(
//              mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    person.name,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    person.position,
                    style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Spacer(flex: 2),
              Text(
                person.city,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              )

            ],
          ),
        ),
      ),
    );
  }
}

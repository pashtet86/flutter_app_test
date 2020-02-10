import 'package:flutter/material.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
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
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.play_circle_filled),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

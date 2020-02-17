import 'package:flutter/material.dart';
import 'package:flutter_app_test/helpers/utils.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  double _opacityLevel = 0.0;
  double _containerWidth = 0.0;
  double _containerHeight = 0.0;

  initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        _opacityLevel = 1;
        _containerHeight = 100;
      });
    });

  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        AppBar(
          backgroundColor: Colors.blue,
          title: Text('Home page'),
          centerTitle: true,
          elevation: 2,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedContainer(
                width: 350,
                height: _containerHeight,
                duration: Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                alignment: Alignment.center,
                child: Text(
                  'WE',
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Avenir-Black', fontWeight: FontWeight.w700, fontSize: 90, color: Color.fromRGBO(255, 0, 150, 1)),
                ),
              ),

              AnimatedContainer(
                width: 350,
                height: _containerHeight,
                duration: Duration(milliseconds: 400),
                curve: Curves.easeIn,
                alignment: Alignment.center,
                child: Text(
                  'ARE',
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Avenir-Black', fontWeight: FontWeight.w700, fontSize: 90, color: Color.fromRGBO(0, 240, 240, 1)),
                ),
              ),
              AnimatedContainer(
                width: 350,
                height: _containerHeight,
                duration: Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                alignment: Alignment.center,
                child: Text(
                  'BRAIN',
                  softWrap: false,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Avenir-Black', fontWeight: FontWeight.w700, fontSize: 90, color: Color.fromRGBO(255, 239, 0, 1)),
                ),
              ),
            ],
          ),
        ),

      ],


    );
  }
}

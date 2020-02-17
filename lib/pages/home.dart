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

  initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        _opacityLevel = 1;
        _containerWidth = 500;
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
                width: _containerWidth,
                height: 100,
                duration: Duration(milliseconds: 1500),
                alignment: Alignment.center,
                child: AnimatedOpacity(
                  opacity: _opacityLevel,
                  duration: Duration(seconds: 1),
                  child: Text(
                    'WE',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontFamily: 'Avenir-Black', fontWeight: FontWeight.w700, fontSize: 90, color: Color.fromRGBO(255, 0, 150, 1)),
                  ),
                ),
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

      ],


    );
  }
}

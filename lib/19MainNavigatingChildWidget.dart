import 'package:flutter/material.dart';
import './19/home.dart';
import './19/second.dart';
import './19/third.dart';

class MyApp19 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      routes: <String, WidgetBuilder>{
        //All available pages
        '/Home': (BuildContext contrext) => Home(),
        '/Second': (BuildContext contrext) => Second(),
        '/Third': (BuildContext contrext) => Third(),
      },
      home: Home(), //first page displayed
    );
  }
}
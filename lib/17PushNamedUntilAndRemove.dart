import 'package:flutter/material.dart';
import './17/home.dart';
import './17/second.dart';
import './17/third.dart';

class MyApp17 extends StatelessWidget {

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
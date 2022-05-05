import 'package:flutter/material.dart';
import './16/home.dart';
import './16/second.dart';
import './16/third.dart';


class MyApp16 extends StatelessWidget {
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
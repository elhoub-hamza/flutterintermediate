import 'package:flutter/material.dart';
import './18/home.dart';
import './18/second.dart';
import './18/third.dart';


class MyApp18 extends StatelessWidget {

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
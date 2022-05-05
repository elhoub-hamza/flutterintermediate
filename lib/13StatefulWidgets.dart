import 'package:flutter/material.dart';
import 'package:flutterintermediate/13clock.dart';


class MyApp13 extends StatefulWidget {
  @override
  _State createState() =>  _State();
}

class _State extends State<MyApp13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name here'),
      ),
      body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                const Text('Time is:'),
                Clock()
              ],
            ),
          )
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '14TimeCounter.dart';



class MyApp14 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp14> {
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
                const Text('My Stop Watch'),
                TimeCounter()
              ],
            ),
          )
      ),
    );
  }
}
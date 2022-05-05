import 'package:flutter/material.dart';

class MyApp1 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp1> {

  String _value = 'Nothing Yet';

  void _onPressed() => setState(() => _value = DateTime.now().toString());

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
                Text(_value),
                IconButton(
                  icon: const Icon(Icons.timer),
                  onPressed: _onPressed,
                  tooltip: 'Click me',
                )
              ],
            ),
          )
      ),
    );
  }
}
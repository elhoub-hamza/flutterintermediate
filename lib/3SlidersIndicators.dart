import 'package:flutter/material.dart';


class MyApp3 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp3> {

  double _value = 0.0;

  void _onChanged(double value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Name here'),
      ),
      body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Slider(value: _value, onChanged: _onChanged),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  child:  LinearProgressIndicator(
                    value: _value,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  child:  CircularProgressIndicator(
                    value: _value,
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
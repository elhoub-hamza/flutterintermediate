import 'dart:math';
import 'package:flutter/material.dart';


class MyApp8 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class Area {
  int index;
  String name;
  Color color;
  Area({this.index = -1, this.name = 'Area', this.color = Colors.lightBlueAccent});
}

class _State extends State<MyApp8> {

  late int _location;
  late List<Area> _areas;


  @override
  void initState() {
    _areas = <Area>[];
    for(int i = 0; i< 16; i++) {
      _areas.add(Area(index: i, name: 'Area $i'));
    }

    var rng = Random();
    _location = rng.nextInt(_areas.length);
  }

  Widget _generate(int index) {
    return GridTile(
        child: Container(
          padding: const EdgeInsets.all(5.0),
          child:ElevatedButton(
            onPressed: () => _onPressed(index),
            //color: _areas[index].color,
            child: Text(_areas[index].name, textAlign: TextAlign.center),
          ),
        )
    );
  }

  void _onPressed(int index) {
    setState((){
      if(index == _location) {
        _areas[index].color = Colors.green;
        //You won
      } else {
        _areas[index].color = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name here'),
      ),
      body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
              child: GridView.count(
                crossAxisCount: 4,
                children: List<Widget>.generate(16, _generate),
              )
          )
      ),
    );
  }
}
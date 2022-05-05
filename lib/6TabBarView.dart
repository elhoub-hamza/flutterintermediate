import 'package:flutter/material.dart';


class MyApp6 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class Choice {
  final String? title;
  final IconData? icon;

  const Choice({this.title, this.icon});
}

class _State extends State<MyApp6> with SingleTickerProviderStateMixin {

  TabController? _controller;
  final List<Choice> _items = [
    const Choice(title: 'CAR', icon: Icons.directions_car),
    const Choice(title: 'BICYCLE', icon: Icons.directions_bike),
    const Choice(title: 'BOAT', icon: Icons.directions_boat),
    const Choice(title: 'BUS', icon: Icons.directions_bus),
    const Choice(title: 'TRAIN', icon: Icons.directions_railway),
    const Choice(title: 'WALK', icon: Icons.directions_walk),
  ];


  @override
  void initState() {
    _controller =  TabController(length: _items.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  AppBar(
          title:  const Text('Name here'),
          bottom:  PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child:  Theme(
                data: Theme.of(context).copyWith(accentColor: Colors.white),
                child:  Container(
                  height: 48.0,
                  alignment: Alignment.center,
                  child:  TabPageSelector(controller: _controller,),
                )
            ),

          ),
        ),
        body:  TabBarView(
          controller: _controller,
          children: _items.map((Choice item){
            return  Container(
              padding: const EdgeInsets.all(25.0),
              child:  Center(
                child:  Column(
                  children: <Widget>[
                     Text(item.title!),
                     Icon(item.icon, size: 120.0,)
                  ],
                ),
              ),

            );
          }).toList(),
        )
    );
  }
}
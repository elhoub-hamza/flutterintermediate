import 'package:flutter/material.dart';


class MyApp5 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class MyItem {
  bool isExpanded;
  final String header;
  final Widget body;

  MyItem(this.isExpanded, this.header, this.body);
}

class _State extends State<MyApp5> {

  final List<MyItem> _items = [];


  @override
  void initState() {
    for(int i = 0 ; i< 10; i++) {
      _items.add(MyItem(
          false,
          'Item $i',
          Container(
            padding:const EdgeInsets.all(10.0),
            child:const Text('Hello World'),
          )
      ));
    }
  }

  ExpansionPanel _createitem(MyItem item) {
    return ExpansionPanel(
        headerBuilder: (BuildContext context, bool isExpanded) {
          return Container(
            padding:const EdgeInsets.all(5.0),
            child: Text('Header ${item.header}'),
          );
        },
        body: item.body,
        isExpanded: item.isExpanded

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Name here'),
      ),
      body: Container(
        padding:const EdgeInsets.all(32.0),
        child: ListView(
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _items[index].isExpanded = !_items[index].isExpanded;
                });
              },
              children: _items.map(_createitem).toList(),
            )
          ],
        ),
      ),
    );
  }
}
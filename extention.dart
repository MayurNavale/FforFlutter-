import 'package:flutter/material.dart';

class ShoppingBasket extends StatefulWidget {
  @override
  ShoppingBasketState createState() => new ShoppingBasketState();
}
// stores ExpansionPanel state information
class Item {
  Item({
    this.typeclass,
    this.expandedValue,
    this.ir=false,
    this.co_Pilot=false,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
  var typeclass;
   bool ir=false;
  bool co_Pilot=false;
  
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Additional Ratings',
      // expandedValue: 'This is item number $index',
    );
  });
}

class MyItem {
  MyItem({ this.isExpanded: false, this.header, this.body ,this.body1});

  bool isExpanded;
  final String header;
  final String body;
    final String body1;
  
}

class ShoppingBasketState extends State<ShoppingBasket> {
  List<MyItem> _items = <MyItem>[
    new MyItem(header: 'header', body: 'body',body1: 'body')
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: [
        new ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _items[index].isExpanded = !_items[index].isExpanded;
            });
          },
          children: _items.map((MyItem item) {
            return new ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return new Text(item.header);
              },
              isExpanded: item.isExpanded,
              body:Container(
                 height: 150.0,
                     
                      decoration: new BoxDecoration(
                        color: Colors.white,
                       
                      ),
              child:Column(
      children: [
       Expanded(child: Extentiontil(),),
          Expanded(
            child: Extentiontil2(),),
        
               ],),
           
             ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

void main() {
  runApp(new MaterialApp(
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text('ExpansionPanel Example'),
      ),
      body: new ShoppingBasket(),
    ),
  ));
}
class Extentiontil extends StatefulWidget {
  Extentiontil({Key key}) : super(key: key);

  @override
  Extentiontil1 createState() => Extentiontil1();
}

class Extentiontil1 extends State<Extentiontil> {
  var typeclass;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Icon(Icons.delete),
      leading: Text('Class'),
      title: DropdownButton<String>(
        hint: Text('Type'),
        icon: Icon(IconData(58131, fontFamily: 'MaterialIcons')),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String newValue) {
          setState(() {
            typeclass = newValue;
          });
        },
        items: <String>[
          'SEP (land)',
          'SEP (sea)',
          'MEP (land)',
          'MEP (sea)',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: typeclass,
      ),
    );
  }
}
class Extentiontil2 extends StatefulWidget {
  Extentiontil2({Key key}) : super(key: key);

  @override
  _Extentiontil12 createState() => _Extentiontil12();
}


class _Extentiontil12 extends State<Extentiontil2> {
  var typeclass;
  @override
  Widget build(BuildContext context) {
    return ListTile(
   
      trailing: Icon(Icons.delete),
              onTap: () {
                setState(() {
                 
                });
              },
      leading: Text('ir'),
      title: DropdownButton<String>(
        hint: Text('Type'),
        icon: Icon(IconData(58131, fontFamily: 'MaterialIcons')),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String newValue) {
          setState(() {
            typeclass = newValue;
          });
        },
        items: <String>[
          'SEP (land)',
          'SEP (sea)',
          'MEP (land)',
          'MEP (sea)',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: typeclass,
      ),
    );
  }
}


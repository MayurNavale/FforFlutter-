//import 'package : flutter/material.dart';
 import 'package:flutter/material.dart';

void main()=>runApp(Myapp());

class Myapp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
    //tille :'wmdnessapp',
    home:Scaffold(
     appBar: AppBar(
     title:Text('26 may 2020'),
     ),
    body:createlist(),
    ),
      );
  }
}

    Widget createlist() {
      return Center(
        child:Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10.0),
        alignment: Alignment(1.0,1.0),
        width: 90,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.blue,
          //border: Border.all(),
        ),
        child: Align(
        alignment: Alignment.center,
        child: Text(
          "Hello",
          style: TextStyle(fontSize: 10),
        ),
      ),
    
      ),
        );
    }
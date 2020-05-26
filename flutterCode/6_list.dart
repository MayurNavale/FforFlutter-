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
     return ListView.builder(
     padding :EdgeInsets.all(16.0),
     itemExtent:30.0,
      itemBuilder:(BuildContext context , int index){
        return Text('row $index');
      },
     );
    }
      
      
      
     
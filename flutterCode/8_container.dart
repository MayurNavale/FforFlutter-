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
 
Widget createlist(){
return Center(
child : Container(
margin :EdgeInsets.all(1),
padding :EdgeInsets.all(10),
alignment : Alignment.center,
width: 200,
height:100,
decoration: BoxDecoration(
color:Colors.blue,
  border:Border.all(),
  ),
child: Align(
alignment:Alignment.center,
child:Text("hellooo",style:TextStyle(fontSize:40))
),
),
);
}
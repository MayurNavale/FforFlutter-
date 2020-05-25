import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
   Widget build (BuildContext context){
     return MaterialApp(
     title: 'flutter app',
     home:Scaffold(
     appBar: AppBar(
     title:Text('flutter app'),
     ),
       body:Center(
       child:Text('hello\nWelcome to flutter app davelopment'),
       ),
     ),
     );
   }
}
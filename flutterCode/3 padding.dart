import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
        
      home: Scaffold(
    appBar: AppBar(
    title:Text('forth app'),
    ),
      body : createdwedget(),
        ),
      );
      
  }
}

 Widget createdwedget(){
  return Padding(
       padding: EdgeInsets.all(30.0, ),
    
  child:Text ("helo",style:TextStyle(fontSize:20),)
    );
   
}
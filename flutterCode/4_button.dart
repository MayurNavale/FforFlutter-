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
return RaisedButton(
  child: const Text('hello world',
             style:TextStyle (
               fontSize:29),
                    ),
  color:Colors.red,
  elevation: 9,
  onPressed:(){
    
  },
         );  
}


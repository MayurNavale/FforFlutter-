import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
  home:Page1(),
  ));
}

class Page1 extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
    appBar : AppBar(),
    body:Center(
    child:RaisedButton(
     child: Text('go!'),
    onPressed:(){
      Navigator.of (context).push(_createRoute());
      
    },
    ),
    ),
    );
    
  }
}

Route _createRoute(){
  return PageRouteBuilder(
  pageBuilder:(context,amimation,secondaevAniamtion)=>Page2(),
     transitionsBuilder: (context, animation, secondaryAnimation, child){
       return child;
     },
    );
}
    
    
  class Page2 extends StatelessWidget{
    Widget build(BuildContext context){
      return Scaffold(
      appBar: AppBar(),
      body: Center(
      child:Text('page 2'),
      ),
      );
    }
  }
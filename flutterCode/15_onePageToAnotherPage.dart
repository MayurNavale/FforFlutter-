import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
  title:'flutter',
  home: FirstScreen(),
  )
 );
}

class FirstScreen extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
        title:Text('page1')
          ),
        body:Center(
        child:RaisedButton(
        child:Text('press here to go page 2'),
          onPressed:(){
    _navigatortosecondpage(context);
        },
      )
     ),
   );
  }
  void _navigatortosecondpage(BuildContext context){
    Navigator.push(
    context,
    MaterialPageRoute(
    builder:(context)=>SecondScreen(),
    )
    );
  }
}

  class SecondScreen extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
        title:Text('page2'),
          ),
        body:Center(
        child:RaisedButton(
        child:Text('press here to go back'),
          onPressed:(){
            _navigatortohomepage(context);
          },
      ),
    ),
      );
  }
    void  _navigatortohomepage(BuildContext context){
      Navigator.pop(context);
    }
 
  }




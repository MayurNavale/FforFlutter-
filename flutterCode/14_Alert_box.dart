import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
        title:Text('complex  example'),
          ),
        body:MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget{
  _MyWidgetState  createState()=>_MyWidgetState();
}
class _MyWidgetState extends State<MyWidget>{
   //bool _checkedValue=false;
  Widget build(BuildContext context){
    return RaisedButton(
      child:Text('press here'),
      onPressed:(){
        _showAlartdialog();
      },
      
    );
   }

  
  void _showAlartdialog(){
    Widget okButton=FlatButton(
    child:Text('ok'),
      onPressed:(){
        Navigator.pop(context);
      },
    );
    
    AlertDialog alart=AlertDialog(
    title:Text('dialogbox'),
    content:Text('u press button'),
    actions:[
      okButton,
    ],
    );
    showDialog(
     context:context,
      builder:(BuildContext context){
        return alart;
      },
    );
    
  }
  


}

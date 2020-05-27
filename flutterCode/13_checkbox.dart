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
   bool _checkedValue=false;
  Widget build(BuildContext context){
    return CheckboxListTile(
    title:Text('this is list tile'),
      value:_checkedValue,
      onChanged:(newValue){
        _doSomething(newValue);
      }
      
    );
   }

  
  void _doSomething(bool ischecked ){
    setState(()=>_checkedValue=ischecked);
  }
  


}


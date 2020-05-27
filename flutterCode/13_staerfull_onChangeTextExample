
  
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());




class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
    home :Scaffold(
      appBar:AppBar(
        //:Colors.green,
      title:Text('complex example'),
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
String textString='hello world';
Widget build(BuildContext context){
  return  Column(
    //alignment:Alignment.center,
  children:[
     Text(textString),
    
         RaisedButton(
           child: const Text('hello'),
             color:Colors.red,
                 onPressed:(){
                   dosomething();
          
        },
           
      ),
    Padding(
      padding:EdgeInsets.all(20),
      child:TextField(
     decoration:InputDecoration(
       border: InputBorder.none,
       hintText: 'write here',
       ),
       onChanged: (text) {
                _doSomething(text);
              },
     
  ),
    ),
    
    ],
);
}
  void dosomething(){
    setState((){
      textString='hello flutter';
    });
  }
  void _doSomething(String text ){
    setState((){
      textString=text;
    });
  }
  


}


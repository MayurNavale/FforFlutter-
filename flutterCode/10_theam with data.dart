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
      body:createwidget(),
     ),
    );
  }
}

Widget createwidget(){
  return Column(
    children:[
      Expanded(
      flex:2,
      child:container1(),
      ),
      Expanded(
      flex:6,
      child:container2(),
      ),
      Expanded(
      flex:2,  
      child:container3(),
      ),
    ],
  );
}








Widget container1(){
 return  Container(
   color: Colors.green,
   
    child:Row(
   children:[
   
     Expanded(
      flex:2,
      child:Container(
        //color:Colors.blue,
         child:Icon(Icons.home ),
        ),
     ),
     
    Expanded(
      flex:8,
      child:Container(
         child:Text('Stateless widgets' ,style: TextStyle(
          fontSize: 29.0  )),
        ),
       ),
      ],  
     ),
   );
}


Widget container2(){
 return  Container(
   color: Colors.blue,
   child:Padding(
        padding: EdgeInsets.all(8.0),
        child:Text('    Stateless widgets are widgets that dont store any state. That is they dont store values that might change. \n    For example Icon is stateless.the icon is also stateless widget as well as text wedget is also stateless widget .u might say "But wait , u can text value"True , but if u want to change the text value ,u just create a whole new widget with new text.,',style: TextStyle(
          fontSize: 16.0  )
                  ),
     
            ),
  
      );
}


Widget container3(){
 return  Container(
   color: Colors.green,
   child:Row(
   children:[
   
     Expanded(
       flex:6,
      child:Padding(
        padding: EdgeInsets.all(8.0),
        child:Text(' NEXT : Statefull widgets ', style: TextStyle(
          fontSize: 14 )),
     ),
     ),
       
    Expanded(
        flex:4,
      child:FlutterLogo(
        size: 60.0,
        ),
       ),
      ],  
     ),
   );
  
}


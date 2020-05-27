
  
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
      body:createwidget1(),
     ),
    );
  }
}
Widget createwidget1(){
  return Container(
  margin:EdgeInsets.all(30),
    padding:EdgeInsets.all(10),
    alignment:Alignment.topCenter,
   // width:600,
    //height:200,
    decoration:BoxDecoration(
    color :Colors.purple[900],
      border:Border.all(),
       borderRadius: BorderRadius.all(Radius.circular(4.0))
    ),
    child:insidecontainer(),
  );
  
}

Widget insidecontainer(){
  return Column(
    mainAxisSize: MainAxisSize.min,
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
   //color: Colors.green,
   
    child:Row(
   children:[
     Padding(
        padding: EdgeInsets.all(8.0),
        child:Icon(Icons.home ),
         ),
     Text('Stateless widgets' ,style: TextStyle(
          fontSize: 20.0 ,color: Colors.white ),),
      ],
     
    ),
   );
}

Widget container2(){
 return  Padding(
        padding: EdgeInsets.all(8.0),
        child:Text('    Stateless widgets are widgets that dont store any state. That is they dont store values that might change. \n    For example Icon is stateless.the icon is also stateless widget .,',style: TextStyle(
          fontSize: 14.0 ,color: Colors.white )
                  ),
                );
             }

Widget container3(){
 return  Container(
  // color: Colors.green,
   child:Row(
   children:[
   
     
     Padding(
        padding: EdgeInsets.all(8.0),
        child:Text(' NEXT : Statefull widgets ', style: TextStyle(
          fontSize: 12,color: Colors.blue )),
            ),
     FlutterLogo(
        size: 30.0,
     
       ),
      ],  
     ),
   );
  
}









import 'package:flutter/material.dart';
import 'package:reminder_app/list/one.dart';
import 'package:reminder_app/list/tow.dart';


class NavDrawer extends StatelessWidget {
  var sizebox=SizedBox(width: 40, height:2,child:Container(color: Colors.grey[400],));
  var textStyle = TextStyle( color: Colors.white, fontWeight: FontWeight.w400, fontSize: 23,letterSpacing:0.9);
  List <dynamic>location=[ One(), Tow()];
  List <String> listitems=['one','two'];
  List<IconData> icon=[Icons.contact_phone,Icons.language];
  @override
  Widget build(BuildContext context) {
    return Drawer(
       elevation:10,
        child:Card(
          margin: EdgeInsets.all(0),
              elevation: 10,//color:Color.alphaBlend (Colors.deepPurple[400] ,Colors.deepPurple),
              child:Container( decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    // Color.fromARGB(255, 25,178,238),
                    // Color.fromARGB(255, 21,236,229),
                    Colors.blue , Colors.blue
                  ],
                )
              ),child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
      //           DrawerHeader(
      //             curve: Curves.easeOutQuart,
      //             padding: EdgeInsets.fromLTRB(3, 3, 3, 3) ,
      //           margin:  EdgeInsets.only(bottom: 3.0),    // padding = const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
      //   child: Text('DLICENCE'),
      //   decoration: BoxDecoration(
      //     color: Colors.blue,
      //   ),
      // ),
                  SizedBox(height:30,width: 10),
                  Container(
                  //    CircleAvatar(
                  //    radius: 14.0, 
                  //  backgroundColor: Colors.grey,
                  //  child: Icon(Icons.contact_phone, color: Colors.white),),
                
                   alignment: Alignment.center,
                   height: 40, 
                   color:Colors.blue,// Color.fromARGB(255, 25,178,238), 
                   child: Center(
                     child: Text("  DLICENCE ", 
                      style: TextStyle( color: Colors.white, 
                      fontSize: 37), ),
                    ),
                 ),
                  SizedBox(height:2,width: 10),
              Container(
         
                  height: ( MediaQuery.of(context).size.height-80),
                  child:  ListView.builder(
                  itemCount: listitems.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                  return Column( children: <Widget>[ListTile(
                    // shape: DecoratedBox( radius: 0.15,),
                      trailing: Icon(Icons.navigate_next,color: Colors.white,),
                      leading:Icon(icon[index],color: Colors.white,),
                      title: Text(listitems[index], style:textStyle),
                      onTap:() { Navigator.push(context, MaterialPageRoute(builder: (context) => location[index]), );} , ),
                      // SizedBox(width: MediaQuery.of(context).size.width, height:2,child:Container(color: Colors.grey[400],))
                    
                     ] 
                  );
                }
              )
            ) ,
                
          ],
        ),
      ),
    ),
    );
  }
}






 
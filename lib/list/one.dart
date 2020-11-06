import 'package:flutter/material.dart';
import 'package:reminder_app/calenderPage/calenderScreen.dart';
import 'package:reminder_app/list/navbar.dart';
import 'package:reminder_app/model/model.dart';
import 'package:reminder_app/database/sqflite.dart';
import 'package:async/async.dart';
import 'dart:convert';

class One extends StatefulWidget {
  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
     var cards = <Card>[];
   Card createCard(ReminderClass w, int index) {

    return Card(
   child:Container(
      padding: EdgeInsetsDirectional.only(start :10,bottom: 6),
                decoration:
                index.isEven? BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(22),):
           BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(22),),
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  w.time,
                  style: TextStyle(
                      fontFamily: 'avenir',
                      color: CustomColors.primaryTextColor,
                      fontSize: 32),
                ),
             w.repeatId==2?  Text(
                  'Every Day from :',
                  style: TextStyle(
                     letterSpacing: 1.1,
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w300,
                      color: CustomColors.primaryTextColor,
                      fontSize: 20),
                ):Container(),
                 w.repeatId==3? Text(
                 'Every  "${w.weekday}"   from :',
                  style: TextStyle(
                    letterSpacing: 1.1,
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w300,
                      color: CustomColors.primaryTextColor,
                      fontSize: 20),
                ):Container(),
              
                Text(
                  w.date,
                  style: TextStyle(
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w300,
                      color: CustomColors.primaryTextColor,
                      fontSize: 20),
                ),
                Text(
                  w.description,
                  style: TextStyle(
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w300,
                      color: CustomColors.primaryTextColor,
                      fontSize: 16),
                ),
              ],
            ),
   )
            );}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent[600],
        onPressed: () async {
            await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CalendarScreen()));
//               ).then((value) {
//                 setState(() { w.clear();  });  
// // DBProvider.db.getAlldata().then((values) {
       
// //            for (var item in rowalram) {
// //                  q=jsonEncode(item);
// //                  w.add(jsonDecode(q));
//                   setState(() {
//                      w=allAlram;
//               });  
//               //  }
//               //  });
//               }  );
             
        } ,
      tooltip: "add reminder",
      child: Icon(Icons.add ,color: Colors.white,),
      ),
      
    );
  }
}
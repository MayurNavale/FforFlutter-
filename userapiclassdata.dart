import 'dart:convert';

import 'package:flutter/material.dart';

//import 'package:flutter_listview_json/entities/note.dart';
//import 'package:http/http.dart' as http;

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String a;
  //var alldetailA=new Alldetail();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter listview with json'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              child: Text(
                'insert',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
// alldetailA.id=21312;
//    alldetailA.idUser='fdsdsgdsgdssffsd';
              },
            ),

            RaisedButton(
              child: Text(
                'query',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                a = 'd';
                shoe();
              },
            ),
//                    Text(
//                     _notes[].title,
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold
//                     ),
//                   ),
//                   Text(
//                     _notes[].text,
//                     style: TextStyle(
//                       color: Colors.grey.shade600
//                     ),
//                   ),
          ],
        ));
  }
}
// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

// 'dart:convert';
// To parse this JSON data, do
// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

//import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.address,
    this.dateOfBirth,
    this.displayName,
    this.email,
    this.firstName,
    this.id,
    this.lastName,
    this.nationality,
    this.passportPhoto,
    this.password,
    this.placeOfBirth,
    this.status,
    this.telephoneNumber,
  });

  String address;
  String dateOfBirth;
  String displayName;
  String email;
  String firstName;
  String id;
  String lastName;
  String nationality;
  String passportPhoto;
  String password;
  String placeOfBirth;
  String status;
  int telephoneNumber;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        address: json["address"],
        dateOfBirth: json["dateOfBirth"],
        displayName: json["displayName"],
        email: json["email"],
        firstName: json["firstName"],
        id: json["id"],
        lastName: json["lastName"],
        nationality: json["nationality"],
        passportPhoto: json["passportPhoto"],
        password: json["password"],
        placeOfBirth: json["placeOfBirth"],
        status: json["status"],
        telephoneNumber: json["telephoneNumber"],
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "dateOfBirth": dateOfBirth,
        "displayName": displayName,
        "email": email,
        "firstName": firstName,
        "id": id,
        "lastName": lastName,
        "nationality": nationality,
        "passportPhoto": passportPhoto,
        "password": password,
        "placeOfBirth": placeOfBirth,
        "status": status,
        "telephoneNumber": telephoneNumber,
      };
}

String f = {
  "address": "walunj",
  "dateOfBirth": "3/8/1996",
  "displayName": "mayur",
  "email": "mayurnavale96@gmail.con",
  "firstName": "mayur",
  "id": "123e4567-e89b-12d3-a456-426655440000",
  "lastName": "navale",
  "nationality": "indian",
  "passportPhoto": "notavalible",
  "password": "Asdfg@34",
  "placeOfBirth": "saswad",
  "status": "unmarrid",
  "telephoneNumber": 412123412
}.toString();
shoe() {
  var obj = new Welcome();
  obj.id = "123e4567-e89b-12d3-a456-426655440000";
  obj.email = 'mayurnavale96@gmail.con';
  obj.password = 'Asdfg@34';
  obj.passportPhoto = "notavalible";
  obj.firstName = "mayur";
  obj.lastName = "navale";
  obj.displayName = "mayur";
  obj.status = "unmarrid";
  obj.dateOfBirth = "3/8/1996";
  obj.placeOfBirth = "saswad";
  obj.nationality = "indian";
  obj.address = "walunj";
  obj.telephoneNumber = 412123412;
//String welcomeToJson(Welcome data) => json.encode(data.toJson());
  //var s= welcomeFromJson(f);
// print (s);
//   var welcome = welcomeToJson(obj);
var ad =welcomeToJson( obj);
 print( ad );
  print(obj);

//   var  alldetail=new Alldetail();
//   //=alldetail;
// alldetail.idUser='gsf';
// alldetail.id=4;
//   List<LicenseDetails> licenseDetails = [LicenseDetails(v, a, v, a, v, a)];
//   List<Personnel> personnel = [Personnel(alldetail.id,  alldetail.idUser,  alldetail.idUser,  alldetail.idUser)];

//   Licence licence = Licence(
//       m, a, m, n, s, m, a, b, a, b, licenseDetails, a, personnel, m, n, a, b);
//   String jsonTutorial = jsonEncode(licence);
//   print(jsonTutorial);
}

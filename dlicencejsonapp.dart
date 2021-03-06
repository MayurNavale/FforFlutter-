import 'dart:convert';

import 'package:flutter/material.dart';

//import 'package:flutter_listview_json/entities/note.dart';
//import 'package:http/http.dart' as http;
class Note {
  String title;
  String text;

  Note(this.title, this.text);

  Note.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    text = json['text'];
  }
}

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
              onPressed: () {},
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

class Tutorial {
  String additionalRemarks;
  int codeId;
  String dt_irtest;
  String dt_issue;
  String dt_ratingtest;
  String dt_validity;
  int examinerCodeId;
  int examinerNumber;
  int id;
  int issuedBy;
  List<LicenseDetails> licenseDetails;
  int licenseNumber;
  List<Personnel> personnel;
  String ratingCertId;
  String remarks;
  int stateId;
  int titleId;
  Tutorial(
      this.additionalRemarks,
      this.codeId,
      this.dt_irtest,
      this.dt_issue,
      this.dt_ratingtest,
      this.dt_validity,
      this.examinerCodeId,
      this.examinerNumber,
      this.id,
      this.issuedBy,
      this.licenseDetails,
      this.licenseNumber,
      this.personnel,
      this.ratingCertId,
      this.remarks,
      this.stateId,
      this.titleId);
  Map toJson() {
    List<Map> licenseDetails = this.licenseDetails != null
        ? this.licenseDetails.map((i) => i.toJson()).toList()
        : null;

    List<Map> personnel = this.personnel != null
        ? this.personnel.map((i) => i.toJson()).toList()
        : null;

    return {
      "additionalRemarks": additionalRemarks,
      "codeId": codeId,
      "dt_irtest": dt_irtest,
      "dt_issue": dt_issue,
      "dt_ratingtest": dt_ratingtest,
      "dt_validity": dt_validity,
      "examinerCodeId": examinerCodeId,
      "examinerNumber": examinerNumber,
      "id": id,
      "issuedBy": issuedBy,
      'licenseDetails': licenseDetails,
      "licenseNumber": licenseNumber,
      'personnel': personnel,
      "ratingCertId": ratingCertId,
      "remarks": remarks,
      "stateId": stateId,
      "titleId": titleId
    };
  }
}

class LicenseDetails {
  bool additionalRating;
  int classId;
  bool copilot;
  int id;
  bool ir;
  int typeId;

  LicenseDetails(this.additionalRating, this.classId, this.copilot, this.id,
      this.ir, this.typeId);

  Map toJson() => {
        "additionalRating": additionalRating,
        "classId": classId,
        "copilot": copilot,
        "id": id,
        "ir": ir,
        "typeId": typeId
      };
}

class Personnel {
  int id;
  String idUser;
  String personnelType;
  String remarks;

  Personnel(this.id, this.idUser, this.personnelType, this.remarks);

  Personnel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idUser = json['idUser'];
    personnelType = json['personnelType'];
    remarks = json['remarks'];
  }

  Map toJson() => {
        "id": id,
        "idUser": idUser,
        "personnelType": personnelType,
        "remarks": remarks,
      };
}



int a = 4;
int b = 3;
bool v = true;
String m = 'rowDataA';
String n = 'rowDataB';
String s = 'rowDataC';

shoe() {
 

  List<LicenseDetails> licenseDetails = [LicenseDetails(v, a, v, a, v, a)];
  List<Personnel> personnel = [Personnel(1, m, n, s)];

  Tutorial tutorial = Tutorial(
      m, a, m, n, s, m, a, b, a, b, licenseDetails, a, personnel, m, n, a, b);
  String jsonTutorial = jsonEncode(tutorial);
  print(jsonTutorial);
}

import 'dart:convert';
//import 'model.dart';

import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
//String _title = 'Dlicence';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home page',
      home: ClassModal(),
    );
  }
}
class ClassModal extends StatefulWidget {
  @override
  _ClassModalState createState() => _ClassModalState();
}

class _ClassModalState extends State<ClassModal> {

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

// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);


// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

//import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));
String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        this.additionalRemarks,
        this.codeId,
        this.dtIrtest,
        this.dtIssue,
        this.dtRatingtest,
        this.dtValidity,
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
        this.titleId,
    });

    String additionalRemarks;
    int codeId;
    String dtIrtest;
    String dtIssue;
    String dtRatingtest;
    String dtValidity;
    int examinerCodeId;
    int examinerNumber;
    int id;
    int issuedBy;
    List<LicenseDetail> licenseDetails;
    int licenseNumber;
    List<Personnel> personnel;
    String ratingCertId;
    String remarks;
    int stateId;
    int titleId;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        additionalRemarks: json["additionalRemarks"] == null ? null : json["additionalRemarks"],
        codeId: json["codeId"] == null ? null : json["codeId"],
        dtIrtest: json["dt_irtest"] == null ? null : json["dt_irtest"],
        dtIssue: json["dt_issue"] == null ? null : json["dt_issue"],
        dtRatingtest: json["dt_ratingtest"] == null ? null : json["dt_ratingtest"],
        dtValidity: json["dt_validity"] == null ? null : json["dt_validity"],
        examinerCodeId: json["examinerCodeId"] == null ? null : json["examinerCodeId"],
        examinerNumber: json["examinerNumber"] == null ? null : json["examinerNumber"],
        id: json["id"] == null ? null : json["id"],
        issuedBy: json["issuedBy"] == null ? null : json["issuedBy"],
        licenseDetails: json["licenseDetails"] == null ? null : List<LicenseDetail>.from(json["licenseDetails"].map((x) => LicenseDetail.fromJson(x))),
        licenseNumber: json["licenseNumber"] == null ? null : json["licenseNumber"],
        personnel: json["personnel"] == null ? null : List<Personnel>.from(json["personnel"].map((x) => Personnel.fromJson(x))),
        ratingCertId: json["ratingCertId"] == null ? null : json["ratingCertId"],
        remarks: json["remarks"] == null ? null : json["remarks"],
        stateId: json["stateId"] == null ? null : json["stateId"],
        titleId: json["titleId"] == null ? null : json["titleId"],
    );

    Map<String, dynamic> toJson() => {
        "additionalRemarks": additionalRemarks == null ? null : additionalRemarks,
        "codeId": codeId == null ? null : codeId,
        "dt_irtest": dtIrtest == null ? null : dtIrtest,
        "dt_issue": dtIssue == null ? null : dtIssue,
        "dt_ratingtest": dtRatingtest == null ? null : dtRatingtest,
        "dt_validity": dtValidity == null ? null : dtValidity,
        "examinerCodeId": examinerCodeId == null ? null : examinerCodeId,
        "examinerNumber": examinerNumber == null ? null : examinerNumber,
        "id": id == null ? null : id,
        "issuedBy": issuedBy == null ? null : issuedBy,
        "licenseDetails": licenseDetails == null ? null : List<dynamic>.from(licenseDetails.map((x) => x.toJson())),
        "licenseNumber": licenseNumber == null ? null : licenseNumber,
        "personnel": personnel == null ? null : List<dynamic>.from(personnel.map((x) => x.toJson())),
        "ratingCertId": ratingCertId == null ? null : ratingCertId,
        "remarks": remarks == null ? null : remarks,
        "stateId": stateId == null ? null : stateId,
        "titleId": titleId == null ? null : titleId,
    };
}

class LicenseDetail {
    LicenseDetail({
        this.additionalRating,
        this.classId,
        this.copilot,
        this.id,
        this.ir,
        this.typeId,
    });

    bool additionalRating;
    int classId;
    bool copilot;
    int id;
    bool ir;
    int typeId;

    factory LicenseDetail.fromJson(Map<String, dynamic> json) => LicenseDetail(
        additionalRating: json["additionalRating"] == null ? null : json["additionalRating"],
        classId: json["classId"] == null ? null : json["classId"],
        copilot: json["copilot"] == null ? null : json["copilot"],
        id: json["id"] == null ? null : json["id"],
        ir: json["ir"] == null ? null : json["ir"],
        typeId: json["typeId"] == null ? null : json["typeId"],
    );

    Map<String, dynamic> toJson() => {
        "additionalRating": additionalRating == null ? null : additionalRating,
        "classId": classId == null ? null : classId,
        "copilot": copilot == null ? null : copilot,
        "id": id == null ? null : id,
        "ir": ir == null ? null : ir,
        "typeId": typeId == null ? null : typeId,
    };
}

class Personnel {
    Personnel({
        this.id,
        this.idUser,
        this.personnelType,
        this.remarks,
    });

    int id;
    String idUser;
    String personnelType;
    String remarks;

    factory Personnel.fromJson(Map<String, dynamic> json) => Personnel(
        id: json["id"] == null ? null : json["id"],
        idUser: json["idUser"] == null ? null : json["idUser"],
        personnelType: json["personnelType"] == null ? null : json["personnelType"],
        remarks: json["remarks"] == null ? null : json["remarks"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "idUser": idUser == null ? null : idUser,
        "personnelType": personnelType == null ? null : personnelType,
        "remarks": remarks == null ? null : remarks,
    };
}





shoe() {
 Welcome saveLicenseDataUsingPOST=new Welcome();
 LicenseDetail licenseDetail=new LicenseDetail(); 
 Personnel personal=new Personnel();
 saveLicenseDataUsingPOST.personnel = <Personnel>[personal];
 saveLicenseDataUsingPOST.licenseDetails = <LicenseDetail>[licenseDetail];
 String json = welcomeToJson(saveLicenseDataUsingPOST);
 print( json);

}


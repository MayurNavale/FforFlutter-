import 'package:flutter/material.dart';
void main()=>runApp(App());
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      //theme: kThemeData,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Licence'),
      ),
      body: Center(
        child: Column(
    children:[
       Expanded(
  
      child:Contries(),
      ),
       Expanded(
  
      child:AdditionalRatings(),
      ),
     
     
     
    ],
  ),
    
      ),
    );
  }
}

class AdditionalRatings extends StatefulWidget {
  @override
  _AdditionalRatings createState() => new _AdditionalRatings();
}

// stores ExpansionPanel state information
 Color c1 = const Color(0xCFCFCF);
  var dateOfInitialIssue='date';
  var dateofIRtest='date';
 String state_of_issue;
  String licenceCodeOptions;
  String title_fo_licence;
String additionalLicenceNumber;
  String licence_Number;
  String country_code;
String examiners_certificate_number;
  String _class;
  String tpyeOptionData;
  bool ir=false;
  bool co_Pilot=false;
String  licenceNumber;

class MyItem {
  MyItem({this.isExpanded: false, this.header,this.ir,this.co_Pilot });

  bool isExpanded;
  final String header; bool ir = false;
  bool co_Pilot = false;

}

class _AdditionalRatings extends State<AdditionalRatings> {
  List<MyItem> _items = <MyItem>[
    new MyItem(header: ' Additional Ratings')
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: [
        new ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _items[index].isExpanded = !_items[index].isExpanded;
            });
          },
          children: _items.map((MyItem item) {
            return new ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return new Container(
margin :EdgeInsets.all(10),
padding :EdgeInsets.all(10),
alignment : Alignment.centerLeft,
                  child:Text(item.header),);
              },
              isExpanded: item.isExpanded,
              body: Container(
                height: 200.0,
                decoration: new BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ClassOptions(),
                    ),
                    Expanded(
                      child: IrCoPilot(),
                    ),
                     Expanded(
                      child: AdditionalLicenceNumber(),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}



class ClassOptions extends StatefulWidget {
  ClassOptions({Key key}) : super(key: key);

  @override
  _ClassOptions createState() => _ClassOptions();
}

class _ClassOptions extends State<ClassOptions> {
  var typeclass;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Icon(Icons.delete),
      leading: Text('Class'),
      title: DropdownButton<String>(
        hint: Text('Type'),
        icon: Icon(IconData(58131, fontFamily: 'MaterialIcons')),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String newValue) {
          setState(() {
            typeclass = newValue;
          });
        },
        items: <String>[
          'SEP (land)',
          'SEP (sea)',
          'MEP (land)',
          'MEP (sea)',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: typeclass,
      ),
    );
  }
}

class IrCoPilot extends StatefulWidget {
  IrCoPilot({Key key}) : super(key: key);

  @override
  _IrCoPilot createState() => _IrCoPilot();
}

class _IrCoPilot extends State<IrCoPilot> {
  var typeclass;
  @override
  Widget build(BuildContext context) {
    return ListTile(
    
      onTap: () {
        setState(() {});
      },
      
      title:  Row(
           children:[
     
      Expanded(
      flex:5,
      child:Center(
        child:ListTile(
         
          leading: Checkbox(
             //checkColor :Colors.deepPurpleAccent,
            hoverColor :Colors.deepPurpleAccent,
  value: ir,
  onChanged: (bool newValue) {
    setState(() {
      ir = newValue;
    }); },), title:Text('IR'),
            )
             ),
            ),
            Expanded(
      flex:7,
      child:Center(
              child:ListTile(
         
          leading: Checkbox(
             //checkColor :Colors.deepPurpleAccent,
            hoverColor :Colors.deepPurpleAccent,
  value: co_Pilot,
  onChanged: (bool newValue) {
    setState(() {
      co_Pilot = newValue;
    }); },), title:Text('Co_Pilot'),
            ),
     ) ),],),
    );
  }
}
class AdditionalLicenceNumber extends StatefulWidget {
  AdditionalLicenceNumber({Key key}) : super(key: key);

  @override
  _AdditionalLicenceNumber createState() => _AdditionalLicenceNumber();
}

class _AdditionalLicenceNumber extends State<AdditionalLicenceNumber> {
  var typeclass;
  @override
  Widget build(BuildContext context) {
    return ListTile(autofocus: true,
          leading: Text('Licence number  :'),
          title: TextField(
      decoration: InputDecoration(
        hintText: 'Licence number:'
      ),
    
            onSubmitted: (String newValue) {
        setState(() {
          additionalLicenceNumber = newValue;
        });
      },
           
)
        );
  }
}
class Contries extends StatefulWidget {
  Contries({Key key}) : super(key: key);
  @override
  _Contries createState() =>  new _Contries();
}
class _Contries extends State<Contries> {
  var typeclass;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
          autofocus: true,
          leading: Text('State of issue  :'),
          title:  DropdownButton<String>(
     hint :Text('State '),
      icon: Icon(IconData(58131, fontFamily: 'MaterialIcons')),
      iconSize: 24,
      elevation: 16,
  
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          state_of_issue = newValue;
        });
      },
      items: <String>['Afghanistan', 'Albania', 'Algeria', 'Andorra', 'Angola', 'Antigua and Barbuda', 'Argentina', 'Armenia', 'Australia', 'Austria', 'Azerbaijan', 'Bahamas', 'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium', 'Belize', 'Benin', 'Bhutan', 'Bolivia', 'Bosnia and Herzegovina', 'Botswana', 'Brazil', 'Brunei', 'Bulgaria', 'Burkina Faso', 'Burundi', 'Cabo Verde', 'Cambodia', 'Cameroon', 'Canada', 'Central African Republic', 'Chad', 'Chile', 'China', 'Colombia', 'Comoros', 'Congo, Democratic Republic', 'Costa Rica', 'Cote d\'Ivoire', 'Croatia', 'Cuba', 'Cyprus', 'Czechia', 'Denmark', 'Djibouti', 'Dominica', 'Dominican Republic', 'Ecuador', 'Egypt', 'El Salvador', 'Equatorial Guinea', 'Eritrea', 'Estonia', 'Eswatini (formerly Swaziland)', 'Ethiopia', 'Fiji', 'Finland', 'France', 'Gabon', 'Gambia', 'Georgia', 'Germany', 'Ghana', 'Greece', 'Grenada', 'Guatemala', 'Guinea', 'Guinea-Bissau', 'Guyana', 'Haiti', 'Honduras', 'Hungary', 'Iceland', 'India', 'Indonesia', 'Iran', 'Iraq', 'Ireland', 'Israel', 'Italy', 'Jamaica', 'Japan', 'Jordan', 'Kazakhstan', 'Kenya', 'Kiribati', 'Kosovo', 'Kuwait', 'Kyrgyzstan', 'Laos', 'Latvia', 'Lebanon', 'Lesotho', 'Liberia', 'Libya', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Madagascar', 'Malawi', 'Malaysia', 'Maldives', 'Mali', 'Malta', 'Marshall Islands', 'Mauritania', 'Mauritius', 'Mexico', 'Micronesia', 'Moldova', 'Monaco', 'Mongolia', 'Montenegro', 'Morocco', 'Mozambique', 'Myanmar', 'Namibia', 'Nauru', 'Nepal', 'Netherlands', 'New Zealand', 'Nicaragua', 'Niger', 'Nigeria', 'North Korea', 'North Macedonia', 'Norway', 'Oman', 'Pakistan', 'Palau', 'Palestine', 'Panama', 'Papua New Guinea', 'Paraguay', 'Peru', 'Philippines', 'Poland', 'Portugal', 'Qatar', 'Romania', 'Russia', 'Rwanda', 'Saint Kitts and Nevis', 'Saint Lucia', 'Saint Vincent and the Grenadines', 'Samoa', 'San Marino', 'Sao Tome and Principe', 'Saudi Arabia', 'Senegal', 'Serbia', 'Seychelles', 'Sierra Leone', 'Singapore', 'Slovakia', 'Slovenia', 'Solomon Islands', 'Somalia', 'South Africa', 'South Korea', 'South Sudan', 'Spain', 'Sri Lanka', 'Sudan', 'Suriname', 'Sweden', 'Switzerland', 'Syria', 'Taiwan', 'Tajikistan', 'Tanzania', 'Thailand', 'Timor-Leste', 'Togo', 'Tonga', 'Trinidad and Tobago', 'Tunisia', 'Turkey', 'Turkmenistan', 'Tuvalu', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States of America', 'Uruguay', 'Uzbekistan', 'Vanuatu', 'Vatican City', 'Venezuela', 'Vietnam', 'Yemen', 'Zambia', 'Zimbabwe', ]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
         value:state_of_issue,
    )
        
    );
  }
}
class LicenceCodeOptions extends StatefulWidget {
  LicenceCodeOptions({Key key}) : super(key: key);

  @override
  _LicenceCodeOptions createState() => _LicenceCodeOptions();
}

class _LicenceCodeOptions extends State<LicenceCodeOptions> {
  var typeclass;
  @override
  Widget build(BuildContext context) {
    return ListTile(autofocus: true,
          leading: Text('LicenceCode  :'),
          title:  DropdownButton<String>(
            hint:Text('licence code'),
         icon: Icon(IconData(58131, fontFamily: 'MaterialIcons')),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          licenceCodeOptions = newValue;
        });
      },
      items: <String>[     'AD.FCL.',     'AE.FCL.',     'AF.FCL.',     'AG.FCL.',     'AI.FCL.',     'AL.FCL.',     'AM.FCL.',     'AO.FCL.',     'AQ.FCL.',     'AR.FCL.',     'AS.FCL.',     'AT.FCL.',     'AU.FCL.',     'AW.FCL.',     'AX.FCL.',     'AZ.FCL.',     'BA.FCL.',     'BB.FCL.',     'BD.FCL.',     'BE.FCL.',     'BF.FCL.',     'BG.FCL.',     'BH.FCL.',     'BI.FCL.',     'BJ.FCL.',     'BL.FCL.',     'BM.FCL.',     'BN.FCL.',     'BO.FCL.',     'BQ.FCL.',     'BR.FCL.',     'BS.FCL.',     'BT.FCL.',     'BV.FCL.',     'BW.FCL.',     'BY.FCL.',     'BZ.FCL.',     'CA.FCL.',     'CC.FCL.',     'CD.FCL.',     'CF.FCL.',     'CG.FCL.',     'CH.FCL.',     'CI.FCL.',     'CK.FCL.',     'CL.FCL.',     'CM.FCL.',     'CN.FCL.',     'CO.FCL.',     'CR.FCL.',     'CU.FCL.',     'CV.FCL.',     'CW.FCL.',     'CX.FCL.',     'CY.FCL.',     'CZ.FCL.',     'DE.FCL.',     'DJ.FCL.',     'DK.FCL.',     'DM.FCL.',     'DO.FCL.',     'DZ.FCL.',     'EC.FCL.',     'EE.FCL.',     'EG.FCL.',     'EH.FCL.',     'ER.FCL.',     'ES.FCL.',     'ET.FCL.',     'FI.FCL.',     'FJ.FCL.',     'FK.FCL.',     'FM.FCL.',     'FO.FCL.',     'FR.FCL.',     'GA.FCL.',     'GB.FCL.',     'GD.FCL.',     'GE.FCL.',     'GF.FCL.',     'GG.FCL.',     'GH.FCL.',     'GI.FCL.',     'GL.FCL.',     'GM.FCL.',     'GN.FCL.',     'GP.FCL.',     'GQ.FCL.',     'GR.FCL.',     'GS.FCL.',     'GT.FCL.',     'GU.FCL.',     'GW.FCL.',     'GY.FCL.',     'HK.FCL.',     'HM.FCL.',     'HN.FCL.',     'HR.FCL.',     'HT.FCL.',     'HU.FCL.',     'ID.FCL.',     'IE.FCL.',     'IL.FCL.',     'IM.FCL.',     'IN.FCL.',     'IO.FCL.',     'IQ.FCL.',     'IR.FCL.',     'IS.FCL.',     'IT.FCL.',     'JE.FCL.',     'JM.FCL.',     'JO.FCL.',     'JP.FCL.',     'KE.FCL.',     'KG.FCL.',     'KH.FCL.',     'KI.FCL.',     'KM.FCL.',     'KN.FCL.',     'KP.FCL.',     'KR.FCL.',     'KW.FCL.',     'KY.FCL.',     'KZ.FCL.',     'LA.FCL.',     'LB.FCL.',     'LC.FCL.',     'LI.FCL.',     'LK.FCL.',     'LR.FCL.',     'LS.FCL.',     'LT.FCL.',     'LU.FCL.',     'LV.FCL.',     'LY.FCL.',     'MA.FCL.',     'MC.FCL.',     'MD.FCL.',     'ME.FCL.',     'MF.FCL.',     'MG.FCL.',     'MH.FCL.',     'MK.FCL.',     'ML.FCL.',     'MM.FCL.',     'MN.FCL.',     'MO.FCL.',     'MP.FCL.',     'MQ.FCL.',     'MR.FCL.',     'MS.FCL.',     'MT.FCL.',     'MU.FCL.',     'MV.FCL.',     'MW.FCL.',     'MX.FCL.',     'MY.FCL.',     'MZ.FCL.',     'NA.FCL.',     'NC.FCL.',     'NE.FCL.',     'NF.FCL.',     'NG.FCL.',     'NI.FCL.',     'NL.FCL.',     'NO.FCL.',     'NP.FCL.',     'NR.FCL.',     'NU.FCL.',     'NZ.FCL.',     'OM.FCL.',     'PA.FCL.',     'PE.FCL.',     'PF.FCL.',     'PG.FCL.',     'PH.FCL.',     'PK.FCL.',     'PL.FCL.',     'PM.FCL.',     'PN.FCL.',     'PR.FCL.',     'PS.FCL.',     'PT.FCL.',     'PW.FCL.',     'PY.FCL.',     'QA.FCL.',     'RE.FCL.',     'RO.FCL.',     'RS.FCL.',     'RU.FCL.',     'RW.FCL.',     'SA.FCL.',     'SB.FCL.',     'SC.FCL.',     'SD.FCL.',     'SE.FCL.',     'SG.FCL.',     'SH.FCL.',     'SI.FCL.',     'SJ.FCL.',     'SK.FCL.',     'SL.FCL.',     'SM.FCL.',     'SN.FCL.',     'SO.FCL.',     'SR.FCL.',     'SS.FCL.',     'ST.FCL.',     'SV.FCL.',     'SX.FCL.',     'SY.FCL.',     'SZ.FCL.',     'TC.FCL.',     'TD.FCL.',     'TF.FCL.',     'TG.FCL.',     'TH.FCL.',     'TJ.FCL.',     'TK.FCL.',     'TL.FCL.',     'TM.FCL.',     'TN.FCL.',     'TO.FCL.',     'TR.FCL.',     'TT.FCL.',     'TV.FCL.',     'TW.FCL.',     'TZ.FCL.',     'UA.FCL.',     'UG.FCL.',     'UK.FCL.',     'UM.FCL.',     'US.FCL.',     'UY.FCL.',     'UZ.FCL.',     'VA.FCL.',     'VC.FCL.',     'VE.FCL.',     'VG.FCL.',     'VI.FCL.',     'VN.FCL.',     'VU.FCL.',     'WF.FCL.',     'WS.FCL.',     'YE.FCL.',     'YT.FCL.',     'ZA.FCL.',     'ZM.FCL.',     'ZW.FCL.'   ]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
            value:licenceCodeOptions,
    ),
           );
  }
}
class LicenceNumber extends StatefulWidget {
  LicenceNumber({Key key}) : super(key: key);
  @override
  _LicenceNumber createState() => _LicenceNumber();
}
class _LicenceNumber extends State<LicenceNumber> {
  var typeclass;
  @override
  Widget build(BuildContext context) {
    return ListTile(autofocus: true,
          leading: Text('Licence number  :'),
          title: TextField(
      decoration: InputDecoration(
        hintText: 'Licence number:'
    ),
    
            onSubmitted: (String newValue) {
        setState(() {
          licence_Number = newValue;
        });
      },
           
)
        );
  }
}

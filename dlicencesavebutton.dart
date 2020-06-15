

import 'package:flutter/material.dart';

void main() => runApp(App());

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
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selected option"),
      ),
      body: Container(
       
        child:Center(
          child: Column(
            children:[
              Text('contries$contries'),
              FlatButton(
                color:Colors.yellow,
                child: Text('Done'),
                textColor:Colors.black,
                onPressed: () {
                  
                },

              ),
            

            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => new _MyHomePage();
}

// stores ExpansionPanel state information
Color c1 = const Color(0xCFCFCF);
var dateOfInitialIssue = 'date';
var dateofIRtest = 'date';
String contries;
String licenceCodeOptions;
String titleOfLicenceOptions;
var dateofratingtest;
String licence_Number;
String countryCodes;
//ring examinerscertificatenumber;
String _class;
String tpyeOptionData;
bool ir = false;
bool co_Pilot = false;
String licenceNumber;
String typeclass;
var additionalLicenceNumber;
var validuntil;
var examinerscertificatenumber;
var instructorsOptions;
var remarksandRestrictions;
String examinarRemarksandRestrictions;
var examiners;
String ratingcertificateendorsement;

class MyItem {
  MyItem({this.isExpanded: false, this.header, this.ir, this.co_Pilot});

  bool isExpanded;
  final String header;
  bool ir = false;
  bool co_Pilot = false;
}

class _MyHomePage extends State<MyHomePage> {
  List<MyItem> _items = <MyItem>[new MyItem(header: ' Additional Ratings')];
  List<MyItem> _insts = <MyItem>[new MyItem(header: ' Instructors')];
  List<MyItem> _examiner = <MyItem>[new MyItem(header: ' Examiners')];
  List<MyItem> _rating = <MyItem>[
    new MyItem(header: ' Rating certificate endorsement')
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Licence'),
      ),
      body: DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyText2,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return ListView(
 
        padding: new EdgeInsets.all(2.0),
        children: [
          Container(
            child: _contries(),
          ),
          Container(
            child: _licenceCodeOptions(),
          ),
          Container(
            child: _licenceNumber(),
          ),
          Container(
            child: _titleOfLicenceOptions(),
          ),
          Container(
            child: _dateOfInitialIssue(),
          ),
          Container(
            child: _countryCodes(),
          ),
          Container(
            child: _dateofratingtest(),
          ),
          Container(
            child: _dateofIRtest(),
          ),
          Container(
            child: _validuntil(),
          ),
          Container(
            child: _examinerscertificatenumber(),
          ),
          Container(child: classOptions(),
          ),
          Container(
            child: _tpyeOptionData(),
          ),
          Container(
            child: _ir(),
          ),
           Container(
            child: _coPilot(),
          ),
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _items[index].isExpanded = !_items[index].isExpanded;
              });
            },
            children: _items.map((MyItem item) {
              return new ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return new Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Text(item.header),
                  );
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
                        child: classOptions(),
                      ),
                       Expanded(
                        child: _ir(),
                      ),
                      Expanded(
                        child: _coPilot(),
                      ),
                      Expanded(
                        child: _remarksandRestrictions(),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _insts[index].isExpanded = !_insts[index].isExpanded;
              });
            },
            children: _insts.map((MyItem item) {
              return new ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return new Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Text(item.header),
                  );
                },
                isExpanded: item.isExpanded,
                body: Container(
                  height: 100.0,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: _instructorsOptions(),
                      ),
                      Expanded(
                        child: _remarksandRestrictions(),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _examiner[index].isExpanded = !_examiner[index].isExpanded;
              });
            },
            children: _examiner.map((MyItem item) {
              return new ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return new Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Text(item.header),
                  );
                },
                isExpanded: item.isExpanded,
                body: Container(
                  height: 100.0,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: _examiners(),
                      ),
                      Expanded(
                        child: _examinarRemarksandRestrictions(),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _rating[index].isExpanded = !_rating[index].isExpanded;
              });
            },
            children: _rating.map((MyItem item) {
              return new ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return new Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Text(item.header),
                  );
                },
                isExpanded: item.isExpanded,
                body: Container(
                  height: 60.0,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: _ratingcertificateendorsement(),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),  FlatButton(
                color:Colors.yellow,
                child: Text('Save'),
                textColor:Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>SecondRoute()),
                  );
                },

              ),
        ],
      );
    },
      ),)
    );
  }
  Widget _ratingcertificateendorsement() {
    return ListTile(
      autofocus: true,
      leading: Text('Rating :'),
      title: TextField(
        decoration:
            InputDecoration(hintText: 'Rating certificate endorsementr:'),
        onSubmitted: (String newValue) {
          setState(() {
            ratingcertificateendorsement = newValue;
          });
        },
      ),
    );
  }

  Widget classOptions() {
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

  Widget _ir() {
    return ListTile(
              leading: Checkbox(
                //checkColor :Colors.deepPurpleAccent,
                hoverColor: Colors.deepPurpleAccent,
                value: ir,
                onChanged: (bool newValue) {
                  setState(() {
                    ir = newValue;
                  });
                },
              ),
              title: Text('IR'),
            );}
      Widget _coPilot(){
        return ListTile(
                  leading: Checkbox(
                    //checkColor :Colors.deepPurpleAccent,
                    hoverColor: Colors.deepPurpleAccent,
                    value: co_Pilot,
                    onChanged: (bool newValue) {
                      setState(() {
                        co_Pilot = newValue;
                      });
                    },
                  ),
                  title: Text('Co_Pilot'),
                );
  }

  Widget _examiners() {
    return ListTile(
      trailing: Icon(Icons.delete),
      leading: Text('Examiners'),
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
            examiners = newValue;
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
        value: examiners,
      ),
    );
  }

  Widget additionalLicenceNumberdata() {
    return ListTile(
        autofocus: true,
        leading: Text('Licence number  :'),
        title: TextField(
          decoration: InputDecoration(hintText: 'Licence number:'),
          onSubmitted: (String newValue) {
            setState(() {
              additionalLicenceNumber = newValue;
            });
          },
        ));
  }

  Widget _remarksandRestrictions() {
    return ListTile(
        autofocus: true,
        leading: Text('Remarks and Restrictions :'),
        title: TextField(
          decoration: InputDecoration(hintText: 'Licence number:'),
          onSubmitted: (String newValue) {
            setState(() {
              remarksandRestrictions = newValue;
            });
          },
        ));
  }

  Widget _contries() {
    return ListTile(
        autofocus: true,
        leading: Text('State of issue  :'),
        title: DropdownButton<String>(
          hint: Text('State '),
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
              contries = newValue;
            });
          },
          items: <String>[
            'Afghanistan',
            'Albania',
            'Algeria',
            'Andorra',
            'Angola',
            'Antigua and Barbuda',
            'Argentina',
            'Armenia',
            'Australia',
            'Austria',
            'Azerbaijan',
            'Bahamas',
            'Bahrain',
            'Bangladesh',
            'Barbados',
            'Belarus',
            'Belgium',
            'Belize',
            'Benin',
            'Bhutan',
            'Bolivia',
            'Bosnia and Herzegovina',
            'Botswana',
            'Brazil',
            'Brunei',
            'Bulgaria',
            'Burkina Faso',
            'Burundi',
            'Cabo Verde',
            'Cambodia',
            'Cameroon',
            'Canada',
            'Central African Republic',
            'Chad',
            'Chile',
            'China',
            'Colombia',
            'Comoros',
            'Congo, Democratic Republic',
            'Costa Rica',
            'Cote d\'Ivoire',
            'Croatia',
            'Cuba',
            'Cyprus',
            'Czechia',
            'Denmark',
            'Djibouti',
            'Dominica',
            'Dominican Republic',
            'Ecuador',
            'Egypt',
            'El Salvador',
            'Equatorial Guinea',
            'Eritrea',
            'Estonia',
            'Eswatini (formerly Swaziland)',
            'Ethiopia',
            'Fiji',
            'Finland',
            'France',
            'Gabon',
            'Gambia',
            'Georgia',
            'Germany',
            'Ghana',
            'Greece',
            'Grenada',
            'Guatemala',
            'Guinea',
            'Guinea-Bissau',
            'Guyana',
            'Haiti',
            'Honduras',
            'Hungary',
            'Iceland',
            'India',
            'Indonesia',
            'Iran',
            'Iraq',
            'Ireland',
            'Israel',
            'Italy',
            'Jamaica',
            'Japan',
            'Jordan',
            'Kazakhstan',
            'Kenya',
            'Kiribati',
            'Kosovo',
            'Kuwait',
            'Kyrgyzstan',
            'Laos',
            'Latvia',
            'Lebanon',
            'Lesotho',
            'Liberia',
            'Libya',
            'Liechtenstein',
            'Lithuania',
            'Luxembourg',
            'Madagascar',
            'Malawi',
            'Malaysia',
            'Maldives',
            'Mali',
            'Malta',
            'Marshall Islands',
            'Mauritania',
            'Mauritius',
            'Mexico',
            'Micronesia',
            'Moldova',
            'Monaco',
            'Mongolia',
            'Montenegro',
            'Morocco',
            'Mozambique',
            'Myanmar',
            'Namibia',
            'Nauru',
            'Nepal',
            'Netherlands',
            'New Zealand',
            'Nicaragua',
            'Niger',
            'Nigeria',
            'North Korea',
            'North Macedonia',
            'Norway',
            'Oman',
            'Pakistan',
            'Palau',
            'Palestine',
            'Panama',
            'Papua New Guinea',
            'Paraguay',
            'Peru',
            'Philippines',
            'Poland',
            'Portugal',
            'Qatar',
            'Romania',
            'Russia',
            'Rwanda',
            'Saint Kitts and Nevis',
            'Saint Lucia',
            'Saint Vincent and the Grenadines',
            'Samoa',
            'San Marino',
            'Sao Tome and Principe',
            'Saudi Arabia',
            'Senegal',
            'Serbia',
            'Seychelles',
            'Sierra Leone',
            'Singapore',
            'Slovakia',
            'Slovenia',
            'Solomon Islands',
            'Somalia',
            'South Africa',
            'South Korea',
            'South Sudan',
            'Spain',
            'Sri Lanka',
            'Sudan',
            'Suriname',
            'Sweden',
            'Switzerland',
            'Syria',
            'Taiwan',
            'Tajikistan',
            'Tanzania',
            'Thailand',
            'Timor-Leste',
            'Togo',
            'Tonga',
            'Trinidad and Tobago',
            'Tunisia',
            'Turkey',
            'Turkmenistan',
            'Tuvalu',
            'Uganda',
            'Ukraine',
            'United Arab Emirates',
            'United Kingdom',
            'United States of America',
            'Uruguay',
            'Uzbekistan',
            'Vanuatu',
            'Vatican City',
            'Venezuela',
            'Vietnam',
            'Yemen',
            'Zambia',
            'Zimbabwe',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          value: contries,
        ));
  }

  Widget _licenceCodeOptions() {
    return ListTile(
      autofocus: true,
      leading: Text('LicenceCode  :'),
      title: DropdownButton<String>(
        hint: Text('licence code'),
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
        items: <String>[
          'AD.FCL.',
          'AE.FCL.',
          'AF.FCL.',
          'AG.FCL.',
          'AI.FCL.',
          'AL.FCL.',
          'AM.FCL.',
          'AO.FCL.',
          'AQ.FCL.',
          'AR.FCL.',
          'AS.FCL.',
          'AT.FCL.',
          'AU.FCL.',
          'AW.FCL.',
          'AX.FCL.',
          'AZ.FCL.',
          'BA.FCL.',
          'BB.FCL.',
          'BD.FCL.',
          'BE.FCL.',
          'BF.FCL.',
          'BG.FCL.',
          'BH.FCL.',
          'BI.FCL.',
          'BJ.FCL.',
          'BL.FCL.',
          'BM.FCL.',
          'BN.FCL.',
          'BO.FCL.',
          'BQ.FCL.',
          'BR.FCL.',
          'BS.FCL.',
          'BT.FCL.',
          'BV.FCL.',
          'BW.FCL.',
          'BY.FCL.',
          'BZ.FCL.',
          'CA.FCL.',
          'CC.FCL.',
          'CD.FCL.',
          'CF.FCL.',
          'CG.FCL.',
          'CH.FCL.',
          'CI.FCL.',
          'CK.FCL.',
          'CL.FCL.',
          'CM.FCL.',
          'CN.FCL.',
          'CO.FCL.',
          'CR.FCL.',
          'CU.FCL.',
          'CV.FCL.',
          'CW.FCL.',
          'CX.FCL.',
          'CY.FCL.',
          'CZ.FCL.',
          'DE.FCL.',
          'DJ.FCL.',
          'DK.FCL.',
          'DM.FCL.',
          'DO.FCL.',
          'DZ.FCL.',
          'EC.FCL.',
          'EE.FCL.',
          'EG.FCL.',
          'EH.FCL.',
          'ER.FCL.',
          'ES.FCL.',
          'ET.FCL.',
          'FI.FCL.',
          'FJ.FCL.',
          'FK.FCL.',
          'FM.FCL.',
          'FO.FCL.',
          'FR.FCL.',
          'GA.FCL.',
          'GB.FCL.',
          'GD.FCL.',
          'GE.FCL.',
          'GF.FCL.',
          'GG.FCL.',
          'GH.FCL.',
          'GI.FCL.',
          'GL.FCL.',
          'GM.FCL.',
          'GN.FCL.',
          'GP.FCL.',
          'GQ.FCL.',
          'GR.FCL.',
          'GS.FCL.',
          'GT.FCL.',
          'GU.FCL.',
          'GW.FCL.',
          'GY.FCL.',
          'HK.FCL.',
          'HM.FCL.',
          'HN.FCL.',
          'HR.FCL.',
          'HT.FCL.',
          'HU.FCL.',
          'ID.FCL.',
          'IE.FCL.',
          'IL.FCL.',
          'IM.FCL.',
          'IN.FCL.',
          'IO.FCL.',
          'IQ.FCL.',
          'IR.FCL.',
          'IS.FCL.',
          'IT.FCL.',
          'JE.FCL.',
          'JM.FCL.',
          'JO.FCL.',
          'JP.FCL.',
          'KE.FCL.',
          'KG.FCL.',
          'KH.FCL.',
          'KI.FCL.',
          'KM.FCL.',
          'KN.FCL.',
          'KP.FCL.',
          'KR.FCL.',
          'KW.FCL.',
          'KY.FCL.',
          'KZ.FCL.',
          'LA.FCL.',
          'LB.FCL.',
          'LC.FCL.',
          'LI.FCL.',
          'LK.FCL.',
          'LR.FCL.',
          'LS.FCL.',
          'LT.FCL.',
          'LU.FCL.',
          'LV.FCL.',
          'LY.FCL.',
          'MA.FCL.',
          'MC.FCL.',
          'MD.FCL.',
          'ME.FCL.',
          'MF.FCL.',
          'MG.FCL.',
          'MH.FCL.',
          'MK.FCL.',
          'ML.FCL.',
          'MM.FCL.',
          'MN.FCL.',
          'MO.FCL.',
          'MP.FCL.',
          'MQ.FCL.',
          'MR.FCL.',
          'MS.FCL.',
          'MT.FCL.',
          'MU.FCL.',
          'MV.FCL.',
          'MW.FCL.',
          'MX.FCL.',
          'MY.FCL.',
          'MZ.FCL.',
          'NA.FCL.',
          'NC.FCL.',
          'NE.FCL.',
          'NF.FCL.',
          'NG.FCL.',
          'NI.FCL.',
          'NL.FCL.',
          'NO.FCL.',
          'NP.FCL.',
          'NR.FCL.',
          'NU.FCL.',
          'NZ.FCL.',
          'OM.FCL.',
          'PA.FCL.',
          'PE.FCL.',
          'PF.FCL.',
          'PG.FCL.',
          'PH.FCL.',
          'PK.FCL.',
          'PL.FCL.',
          'PM.FCL.',
          'PN.FCL.',
          'PR.FCL.',
          'PS.FCL.',
          'PT.FCL.',
          'PW.FCL.',
          'PY.FCL.',
          'QA.FCL.',
          'RE.FCL.',
          'RO.FCL.',
          'RS.FCL.',
          'RU.FCL.',
          'RW.FCL.',
          'SA.FCL.',
          'SB.FCL.',
          'SC.FCL.',
          'SD.FCL.',
          'SE.FCL.',
          'SG.FCL.',
          'SH.FCL.',
          'SI.FCL.',
          'SJ.FCL.',
          'SK.FCL.',
          'SL.FCL.',
          'SM.FCL.',
          'SN.FCL.',
          'SO.FCL.',
          'SR.FCL.',
          'SS.FCL.',
          'ST.FCL.',
          'SV.FCL.',
          'SX.FCL.',
          'SY.FCL.',
          'SZ.FCL.',
          'TC.FCL.',
          'TD.FCL.',
          'TF.FCL.',
          'TG.FCL.',
          'TH.FCL.',
          'TJ.FCL.',
          'TK.FCL.',
          'TL.FCL.',
          'TM.FCL.',
          'TN.FCL.',
          'TO.FCL.',
          'TR.FCL.',
          'TT.FCL.',
          'TV.FCL.',
          'TW.FCL.',
          'TZ.FCL.',
          'UA.FCL.',
          'UG.FCL.',
          'UK.FCL.',
          'UM.FCL.',
          'US.FCL.',
          'UY.FCL.',
          'UZ.FCL.',
          'VA.FCL.',
          'VC.FCL.',
          'VE.FCL.',
          'VG.FCL.',
          'VI.FCL.',
          'VN.FCL.',
          'VU.FCL.',
          'WF.FCL.',
          'WS.FCL.',
          'YE.FCL.',
          'YT.FCL.',
          'ZA.FCL.',
          'ZM.FCL.',
          'ZW.FCL.'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: licenceCodeOptions,
      ),
    );
  }

  Widget _examinarRemarksandRestrictions() {
    return ListTile(
        autofocus: true,
        leading: Icon(IconData(59702, fontFamily: 'MaterialIcons')),
        title: TextField(
          decoration: InputDecoration(hintText: 'Remarks and Restrictions:'),
          onSubmitted: (String newValue) {
            setState(() {
              examinarRemarksandRestrictions = newValue;
            });
          },
        ));
  }

  Widget _licenceNumber() {
    return ListTile(
        autofocus: true,
        leading: Text('Licence number  :'),
        title: TextField(
          decoration: InputDecoration(hintText: 'Licence number:'),
          onSubmitted: (String newValue) {
            setState(() {
              licence_Number = newValue;
            });
          },
        ));
  }

  Widget _examinerscertificatenumber() {
    return ListTile(
        autofocus: true,
        leading: Text('Examiners certificate number :'),
        title: TextField(
          decoration: InputDecoration(hintText: 'Licence number:'),
          onSubmitted: (String newValue) {
            setState(() {
              examinerscertificatenumber = newValue;
            });
          },
        ));
  }

  Widget _titleOfLicenceOptions() {
    return ListTile(
      leading: Text('Title of licence  :'),
      title: DropdownButton<String>(
        hint: Text('Title'),
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
            titleOfLicenceOptions = newValue;
          });
        },
        items: <String>[
          'LAPL(A)',
          'LAPL(H)',
          'LAPL(S)',
          'LAPL(B)',
          'PPL(A)',
          'PPL(H)',
          'PPL(As)',
          'SPL',
          'BPL',
          'CPL(A)',
          'CPL(H)',
          'CPL(As)',
          'MPL',
          'ATPL(A)',
          'ATPL(H)'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: titleOfLicenceOptions,
      ),
    );
  }

  Widget _dateOfInitialIssue() {
    return ListTile(
      leading: Text('Date of initial issue : '),
      title: Container(
        child: Row(
          children: [
            Expanded(child: Text('$dateOfInitialIssue')),
            IconButton(
              icon: Icon(IconData(59701, fontFamily: 'MaterialIcons')),
              color: Colors.deepPurple,
              onPressed: () {
                showAlertDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _dateofratingtest() {
    return ListTile(
      leading: Text('date Of Rating Test'),
      title: Container(
        child: Row(
          children: [
            Expanded(child: Text('$dateofratingtest')),
            IconButton(
              icon: Icon(IconData(59701, fontFamily: 'MaterialIcons')),
              color: Colors.deepPurple,
              onPressed: () {
                showAlertDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _dateofIRtest() {
    return ListTile(
      leading: Text('Date of IR Test : '),
      title: Container(
        child: Row(
          children: [
            Expanded(child: Text('$dateofIRtest')),
            IconButton(
              icon: Icon(IconData(59701, fontFamily: 'MaterialIcons')),
              color: Colors.deepPurple,
              onPressed: () {
                showAlertDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _validuntil() {
    return ListTile(
      leading: Text('Date of initial issue : '),
      title: Container(
        child: Row(
          children: [
            Expanded(child: Text('$validuntil')),
            IconButton(
              icon: Icon(IconData(59701, fontFamily: 'MaterialIcons')),
              color: Colors.deepPurple,
              onPressed: () {
                showAlertDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _countryCodes() {
    return ListTile(
      leading: Text('Issued by :   '),
      title: DropdownButton<String>(
        hint: Text('country code'),
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
            countryCodes = newValue;
          });
        },
        items: <String>[
          'AD',
          'AE',
          'AF',
          'AG',
          'AI',
          'AL',
          'AM',
          'AO',
          'AQ',
          'AR',
          'AS',
          'AT',
          'AU',
          'AW',
          'AX',
          'AZ',
          'BA',
          'BB',
          'BD',
          'BE',
          'BF',
          'BG',
          'BH',
          'BI',
          'BJ',
          'BL',
          'BM',
          'BN',
          'BO',
          'BQ',
          'BR',
          'BS',
          'BT',
          'BV',
          'BW',
          'BY',
          'BZ',
          'CA',
          'CC',
          'CD',
          'CF',
          'CG',
          'CH',
          'CI',
          'CK',
          'CL',
          'CM',
          'CN',
          'CO',
          'CR',
          'CU',
          'CV',
          'CW',
          'CX',
          'CY',
          'CZ',
          'DE',
          'DJ',
          'DK',
          'DM',
          'DO',
          'DZ',
          'EC',
          'EE',
          'EG',
          'EH',
          'ER',
          'ES',
          'ET',
          'FI',
          'FJ',
          'FK',
          'FM',
          'FO',
          'FR',
          'GA',
          'GB',
          'GD',
          'GE',
          'GF',
          'GG',
          'GH',
          'GI',
          'GL',
          'GM',
          'GN',
          'GP',
          'GQ',
          'GR',
          'GS',
          'GT',
          'GU',
          'GW',
          'GY',
          'HK',
          'HM',
          'HN',
          'HR',
          'HT',
          'HU',
          'ID',
          'IE',
          'IL',
          'IM',
          'IN',
          'IO',
          'IQ',
          'IR',
          'IS',
          'IT',
          'JE',
          'JM',
          'JO',
          'JP',
          'KE',
          'KG',
          'KH',
          'KI',
          'KM',
          'KN',
          'KP',
          'KR',
          'KW',
          'KY',
          'KZ',
          'LA',
          'LB',
          'LC',
          'LI',
          'LK',
          'LR',
          'LS',
          'LT',
          'LU',
          'LV',
          'LY',
          'MA',
          'MC',
          'MD',
          'ME',
          'MF',
          'MG',
          'MH',
          'MK',
          'ML',
          'MM',
          'MN',
          'MO',
          'MP',
          'MQ',
          'MR',
          'MS',
          'MT',
          'MU',
          'MV',
          'MW',
          'MX',
          'MY',
          'MZ',
          'NA',
          'NC',
          'NE',
          'NF',
          'NG',
          'NI',
          'NL',
          'NO',
          'NP',
          'NR',
          'NU',
          'NZ',
          'OM',
          'PA',
          'PE',
          'PF',
          'PG',
          'PH',
          'PK',
          'PL',
          'PM',
          'PN',
          'PR',
          'PS',
          'PT',
          'PW',
          'PY',
          'QA',
          'RE',
          'RO',
          'RS',
          'RU',
          'RW',
          'SA',
          'SB',
          'SC',
          'SD',
          'SE',
          'SG',
          'SH',
          'SI',
          'SJ',
          'SK',
          'SL',
          'SM',
          'SN',
          'SO',
          'SR',
          'SS',
          'ST',
          'SV',
          'SX',
          'SY',
          'SZ',
          'TC',
          'TD',
          'TF',
          'TG',
          'TH',
          'TJ',
          'TK',
          'TL',
          'TM',
          'TN',
          'TO',
          'TR',
          'TT',
          'TV',
          'TW',
          'TZ',
          'UA',
          'UG',
          'UK',
          'UM',
          'US',
          'UY',
          'UZ',
          'VA',
          'VC',
          'VE',
          'VG',
          'VI',
          'VN',
          'VU',
          'WF',
          'WS',
          'YE',
          'YT',
          'ZA',
          'ZM',
          'ZW',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: countryCodes,
      ),
    );
  }

  Widget _tpyeOptionData() {
    return ListTile(
      leading: Text('Type'),
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
            tpyeOptionData = newValue;
          });
        },
        items: <String>[
          'TMG',
          'SET',
          'S760',
          'SN601',
          'SE210/10B3/11/12',
          'ND25',
          'ND16',
          'ND26',
          'SuperGuppy',
          'Aero Vodochody SET',
          'A300',
          'A300FFCC',
          'A310/300‐600',
          'A300‐600ST',
          'A320',
          'A330/350',
          'A340',
          'A380',
          'A400M',
          'AT‐4/5/6/8 SET',
          'C27J',
          'AN26',
          'AstaMET',
          'ATR42/72',
          'HS748',
          'Jetstream 41',
          'RA390',
          'BER2E',
          'B707/720',
          'B717',
          'B727',
          'B737 100‐200',
          'B737 300‐900',
          'B747 100‐300',
          'B747‐400',
          'B757/767',
          'B777/787',
          'CL215',
          'CL215T',
          'CL415',
          'CL600/601',
          'CL604/605',
          'CL65',
          'CL30',
          'BD‐500',
          'BD‐700',
          'DHC8',
          'Bae/ATP/Jetstream 61',
          'AVRORJ/Bae146',
          'BAC1‐11',
          'C212',
          'C295',
          'CN235',
          'Cessna SET',
          'C501/551',
          'C510',
          'C525',
          'C560XL/XLS',
          'C500/550/560',
          'C650',
          'C680',
          'C750',
          'C406/425',
          'C441',
          'SF50',
          'CV240/340/440',
          'CV580',
          'Falcon 10/100',
          'Falcon 20/200',
          'Falcon900EX EASy',
          'Falcon2000/2000EX',
          'Falcon2000EX EASy',
          'Falcon 7X',
          'Falcon50/900',
          'DHC3 SET',
          'DHC2 SET',
          'DHC7',
          'D128',
          'D28‐G92',
          'DO 328‐100',
          'DO 328‐300',
          'TBM SET',
          'EA500',
          'EMB110',
          'EMB 120',
          'EMB 135/145',
          'EMB 500/505',
          'EMB 550',
          'EMB170',
          'F27',
          'F 28',
          'F 50',
          'F70/100',
          'G 120TP SET',
          'G520 SET',
          'S2FT',
          'GulfstreamI',
          'GulfstreamII/III',
          'Gulfstream SET',
          'GIV',
          'G‐V',
          'GVI',
          'G150',
          'G200',
          'G280',
          'Herald',
          'HA4T',
          'HS125',
          'BE90/99/100/200',
          'BE36TC SET',
          'BE300/1900',
          'Beech400/MU300',
          'Jetstream31/32',
          'SAETA',
          'HA‐420',
          'IAI1121/23/24',
          'IAI1125',
          'JU52',
          'Learjet20/30',
          'Learjet45/75',
          'Learjet55',
          'Learjet60',
          'LetL410',
          'L188 Electra',
          'Hercules',
          'L1011',
          'Jetstar',
          'L1049',
          'HFB320',
          'VFW‐614',
          'DCA26',
          'DC3',
          'DC4',
          'DC6',
          'DC7',
          'DC8',
          'DC9 10‐50',
          'DC9 80/MD88/ MD90',
          'DC 10',
          'MD 11',
          'MU2B',
          'PAC750XL SET',
          'Piaggio 166',
          'Piaggio 180',
          'BN2T',
          'Pilatus PC6 SET',
          'Pilatus PC7 SET',
          'PC9/PC7MkII',
          'Pilatus PC12 SET',
          'PA31T/42',
          'PA‐46 SET',
          'IPTNCN 235',
          'PZL‐M28',
          'SET Kodiak 100',
          'Rhein Flugzeugbau SET',
          'Rockwell MET',
          'NA265',
          'D228',
          'SAAB340',
          'SAAB2000',
          'SC7Skyvan',
          'SD3‐30/60',
          'Belfast',
          'SEP (land)',
          'Extra500 SET',
          'RRJ95',
          'SA226/227',
          'Snow/Ayres SET',
          'DHC6',
          'Vanguard',
          'Viscount',
          'AP68TP‐600',
          'AP68TP‐300',
          'SF600',
          'SF600A',
          'A119',
          'A109',
          'A139',
          'AW109',
          'AW169',
          'AW189',
          'SK‐61',
          'SA341/342',
          'SA318/SE313',
          'SA316/319/315',
          'SA360',
          'SO 1221',
          'EC120B',
          'AS 350 / EC130',
          'SA 330',
          'AS 332 / EC 225',
          'EC175',
          'AS355',
          'SA365 C',
          'S365 / EC155',
          'BO 105',
          'BK117',
          'EC145 (BK117)',
          'EC135/635',
          'Bell 47',
          'Bell 47 T',
          'Bell 204/205/UH‐1D',
          'Bell 206',
          'Bell 407',
          'Bell 214',
          'Bell 206 LT',
          'Bell 212/412',
          'Bell 214 ST',
          'Bell 222/230/430',
          'Bell 427',
          'Bell 429',
          'BV 234',
          'Brantley B2',
          'HU 269',
          'HU 369/ MD500N / 600N',
          'Bristol 171 B',
          'EH101',
          'ENF 28',
          'ENF 480',
          'S 64 F',
          'Cabri G2',
          'UH 12',
          'UH 12 T',
          'HU 269',
          'SC 330',
          'K 1200',
          'HU369 / MD500N / 600N',
          'MD 900 / 902',
          'KA 26 D',
          'KA 32',
          'Mi 8',
          'SW‐4',
          'Mi 2',
          'KANIA',
          'W‐3 SOKOL',
          'R 22',
          'R 44',
          'R 66',
          'S 55',
          'S 58',
          'SK 76',
          'S76',
          'SK 61',
          'SK 92',
          'SV 4',
          'Bell 47',
          'WHS 55',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: tpyeOptionData,
      ),
    );
  }

  Widget _instructorsOptions() {
    return ListTile(
      leading: Text('Instructors :'),
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
            instructorsOptions = newValue;
          });
        },
        items: <String>[
          'FI(A)',
          'FI(H)',
          'FI(As)',
          'FI(S)',
          'FI(B)',
          'TRI(A)',
          'TRI(H)',
          'TRI(PL)',
          'CRI(A)',
          'IRI(A)',
          'IRI(H)',
          'IRI(As)',
          'SFI(A)',
          'SFI(H)',
          'SFI(PL)',
          'MCCI(A)',
          'MCCI(H)',
          'MCCI(PL)',
          'MCCI(As)',
          'STI(A)',
          'STI(H)',
          'MI',
          'FTI',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: instructorsOptions,
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("select date"),
    content: null,
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

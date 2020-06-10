

import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
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
        child: MyStatefulWidget(),
      ),
    );
  }
}
class FifthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("third  Route"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Go back!'),
          onPressed: () { Navigator.pop(context);
            } ),
      ),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Color c1 = const Color(0xCFCFCF);
  String dropdownValue;
  String licence_Code;
  String title_fo_licence;
  String licence_Number;
  String issued_by;

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: new BoxDecoration(color:c1),
    child: ListView(
      children: <Widget>[

        ListTile(
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
          dropdownValue = newValue;
        });
      },
      items: <String>['Afghanistan', 'Albania', 'Algeria', 'Andorra', 'Angola', 'Antigua and Barbuda', 'Argentina', 'Armenia', 'Australia', 'Austria', 'Azerbaijan', 'Bahamas', 'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium', 'Belize', 'Benin', 'Bhutan', 'Bolivia', 'Bosnia and Herzegovina', 'Botswana', 'Brazil', 'Brunei', 'Bulgaria', 'Burkina Faso', 'Burundi', 'Cabo Verde', 'Cambodia', 'Cameroon', 'Canada', 'Central African Republic', 'Chad', 'Chile', 'China', 'Colombia', 'Comoros', 'Congo, Democratic Republic', 'Costa Rica', 'Cote d\'Ivoire', 'Croatia', 'Cuba', 'Cyprus', 'Czechia', 'Denmark', 'Djibouti', 'Dominica', 'Dominican Republic', 'Ecuador', 'Egypt', 'El Salvador', 'Equatorial Guinea', 'Eritrea', 'Estonia', 'Eswatini (formerly Swaziland)', 'Ethiopia', 'Fiji', 'Finland', 'France', 'Gabon', 'Gambia', 'Georgia', 'Germany', 'Ghana', 'Greece', 'Grenada', 'Guatemala', 'Guinea', 'Guinea-Bissau', 'Guyana', 'Haiti', 'Honduras', 'Hungary', 'Iceland', 'India', 'Indonesia', 'Iran', 'Iraq', 'Ireland', 'Israel', 'Italy', 'Jamaica', 'Japan', 'Jordan', 'Kazakhstan', 'Kenya', 'Kiribati', 'Kosovo', 'Kuwait', 'Kyrgyzstan', 'Laos', 'Latvia', 'Lebanon', 'Lesotho', 'Liberia', 'Libya', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Madagascar', 'Malawi', 'Malaysia', 'Maldives', 'Mali', 'Malta', 'Marshall Islands', 'Mauritania', 'Mauritius', 'Mexico', 'Micronesia', 'Moldova', 'Monaco', 'Mongolia', 'Montenegro', 'Morocco', 'Mozambique', 'Myanmar', 'Namibia', 'Nauru', 'Nepal', 'Netherlands', 'New Zealand', 'Nicaragua', 'Niger', 'Nigeria', 'North Korea', 'North Macedonia', 'Norway', 'Oman', 'Pakistan', 'Palau', 'Palestine', 'Panama', 'Papua New Guinea', 'Paraguay', 'Peru', 'Philippines', 'Poland', 'Portugal', 'Qatar', 'Romania', 'Russia', 'Rwanda', 'Saint Kitts and Nevis', 'Saint Lucia', 'Saint Vincent and the Grenadines', 'Samoa', 'San Marino', 'Sao Tome and Principe', 'Saudi Arabia', 'Senegal', 'Serbia', 'Seychelles', 'Sierra Leone', 'Singapore', 'Slovakia', 'Slovenia', 'Solomon Islands', 'Somalia', 'South Africa', 'South Korea', 'South Sudan', 'Spain', 'Sri Lanka', 'Sudan', 'Suriname', 'Sweden', 'Switzerland', 'Syria', 'Taiwan', 'Tajikistan', 'Tanzania', 'Thailand', 'Timor-Leste', 'Togo', 'Tonga', 'Trinidad and Tobago', 'Tunisia', 'Turkey', 'Turkmenistan', 'Tuvalu', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States of America', 'Uruguay', 'Uzbekistan', 'Vanuatu', 'Vatican City', 'Venezuela', 'Vietnam', 'Yemen', 'Zambia', 'Zimbabwe', ]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    )
        ),
         ListTile(
          leading: Text('LicenceCode  :'),
          title:  DropdownButton<String>(
        hint :Text('licence code'),
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
          licence_Code = newValue;
        });
      },
      items: <String>[     'AD.FCL.',     'AE.FCL.',     'AF.FCL.',     'AG.FCL.',     'AI.FCL.',     'AL.FCL.',     'AM.FCL.',     'AO.FCL.',     'AQ.FCL.',     'AR.FCL.',     'AS.FCL.',     'AT.FCL.',     'AU.FCL.',     'AW.FCL.',     'AX.FCL.',     'AZ.FCL.',     'BA.FCL.',     'BB.FCL.',     'BD.FCL.',     'BE.FCL.',     'BF.FCL.',     'BG.FCL.',     'BH.FCL.',     'BI.FCL.',     'BJ.FCL.',     'BL.FCL.',     'BM.FCL.',     'BN.FCL.',     'BO.FCL.',     'BQ.FCL.',     'BR.FCL.',     'BS.FCL.',     'BT.FCL.',     'BV.FCL.',     'BW.FCL.',     'BY.FCL.',     'BZ.FCL.',     'CA.FCL.',     'CC.FCL.',     'CD.FCL.',     'CF.FCL.',     'CG.FCL.',     'CH.FCL.',     'CI.FCL.',     'CK.FCL.',     'CL.FCL.',     'CM.FCL.',     'CN.FCL.',     'CO.FCL.',     'CR.FCL.',     'CU.FCL.',     'CV.FCL.',     'CW.FCL.',     'CX.FCL.',     'CY.FCL.',     'CZ.FCL.',     'DE.FCL.',     'DJ.FCL.',     'DK.FCL.',     'DM.FCL.',     'DO.FCL.',     'DZ.FCL.',     'EC.FCL.',     'EE.FCL.',     'EG.FCL.',     'EH.FCL.',     'ER.FCL.',     'ES.FCL.',     'ET.FCL.',     'FI.FCL.',     'FJ.FCL.',     'FK.FCL.',     'FM.FCL.',     'FO.FCL.',     'FR.FCL.',     'GA.FCL.',     'GB.FCL.',     'GD.FCL.',     'GE.FCL.',     'GF.FCL.',     'GG.FCL.',     'GH.FCL.',     'GI.FCL.',     'GL.FCL.',     'GM.FCL.',     'GN.FCL.',     'GP.FCL.',     'GQ.FCL.',     'GR.FCL.',     'GS.FCL.',     'GT.FCL.',     'GU.FCL.',     'GW.FCL.',     'GY.FCL.',     'HK.FCL.',     'HM.FCL.',     'HN.FCL.',     'HR.FCL.',     'HT.FCL.',     'HU.FCL.',     'ID.FCL.',     'IE.FCL.',     'IL.FCL.',     'IM.FCL.',     'IN.FCL.',     'IO.FCL.',     'IQ.FCL.',     'IR.FCL.',     'IS.FCL.',     'IT.FCL.',     'JE.FCL.',     'JM.FCL.',     'JO.FCL.',     'JP.FCL.',     'KE.FCL.',     'KG.FCL.',     'KH.FCL.',     'KI.FCL.',     'KM.FCL.',     'KN.FCL.',     'KP.FCL.',     'KR.FCL.',     'KW.FCL.',     'KY.FCL.',     'KZ.FCL.',     'LA.FCL.',     'LB.FCL.',     'LC.FCL.',     'LI.FCL.',     'LK.FCL.',     'LR.FCL.',     'LS.FCL.',     'LT.FCL.',     'LU.FCL.',     'LV.FCL.',     'LY.FCL.',     'MA.FCL.',     'MC.FCL.',     'MD.FCL.',     'ME.FCL.',     'MF.FCL.',     'MG.FCL.',     'MH.FCL.',     'MK.FCL.',     'ML.FCL.',     'MM.FCL.',     'MN.FCL.',     'MO.FCL.',     'MP.FCL.',     'MQ.FCL.',     'MR.FCL.',     'MS.FCL.',     'MT.FCL.',     'MU.FCL.',     'MV.FCL.',     'MW.FCL.',     'MX.FCL.',     'MY.FCL.',     'MZ.FCL.',     'NA.FCL.',     'NC.FCL.',     'NE.FCL.',     'NF.FCL.',     'NG.FCL.',     'NI.FCL.',     'NL.FCL.',     'NO.FCL.',     'NP.FCL.',     'NR.FCL.',     'NU.FCL.',     'NZ.FCL.',     'OM.FCL.',     'PA.FCL.',     'PE.FCL.',     'PF.FCL.',     'PG.FCL.',     'PH.FCL.',     'PK.FCL.',     'PL.FCL.',     'PM.FCL.',     'PN.FCL.',     'PR.FCL.',     'PS.FCL.',     'PT.FCL.',     'PW.FCL.',     'PY.FCL.',     'QA.FCL.',     'RE.FCL.',     'RO.FCL.',     'RS.FCL.',     'RU.FCL.',     'RW.FCL.',     'SA.FCL.',     'SB.FCL.',     'SC.FCL.',     'SD.FCL.',     'SE.FCL.',     'SG.FCL.',     'SH.FCL.',     'SI.FCL.',     'SJ.FCL.',     'SK.FCL.',     'SL.FCL.',     'SM.FCL.',     'SN.FCL.',     'SO.FCL.',     'SR.FCL.',     'SS.FCL.',     'ST.FCL.',     'SV.FCL.',     'SX.FCL.',     'SY.FCL.',     'SZ.FCL.',     'TC.FCL.',     'TD.FCL.',     'TF.FCL.',     'TG.FCL.',     'TH.FCL.',     'TJ.FCL.',     'TK.FCL.',     'TL.FCL.',     'TM.FCL.',     'TN.FCL.',     'TO.FCL.',     'TR.FCL.',     'TT.FCL.',     'TV.FCL.',     'TW.FCL.',     'TZ.FCL.',     'UA.FCL.',     'UG.FCL.',     'UK.FCL.',     'UM.FCL.',     'US.FCL.',     'UY.FCL.',     'UZ.FCL.',     'VA.FCL.',     'VC.FCL.',     'VE.FCL.',     'VG.FCL.',     'VI.FCL.',     'VN.FCL.',     'VU.FCL.',     'WF.FCL.',     'WS.FCL.',     'YE.FCL.',     'YT.FCL.',     'ZA.FCL.',     'ZM.FCL.',     'ZW.FCL.'   ]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
           ),
        ListTile(
          leading: Text('Licence number  :'),
          title: TextField(
      decoration: InputDecoration(
        hintText: 'Licence number:'
      ),
    
            onChanged: (String newValue) {
        setState(() {
          licence_Number = newValue;
        });
      },
)
        ),
         ListTile(
          leading: Text('Title of licence  :'),
          title:  DropdownButton<String>(
      hint :Text('Title'),
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
          title_fo_licence = newValue;
        });
      },
      items: <String>[  'LAPL(A)','LAPL(H)','LAPL(S)','LAPL(B)','PPL(A)','PPL(H)','PPL(As)',
                      'SPL','BPL','CPL(A)','CPL(H)','CPL(As)','MPL','ATPL(A)','ATPL(H)']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
           ),
         ListTile(
          leading: Text('Issued by :   '),
          title:  DropdownButton<String>(
      hint :Text('country code'),
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
          issued_by  = newValue;
        });
      },
      items: <String>['AD','AE','AF','AG','AI','AL','AM','AO','AQ',
                      'AR','AS','AT','AU','AW','AX','AZ','BA','BB',
                      'BD','BE','BF','BG','BH','BI','BJ','BL','BM',
                      'BN','BO','BQ','BR','BS','BT','BV','BW','BY',
                      'BZ','CA','CC','CD','CF','CG','CH','CI','CK',
                      'CL','CM','CN','CO','CR','CU','CV','CW','CX',
                      'CY','CZ','DE','DJ','DK','DM','DO','DZ','EC',
                      'EE','EG','EH','ER','ES','ET','FI','FJ','FK',
                      'FM','FO','FR','GA','GB','GD','GE','GF','GG',
                      'GH','GI','GL','GM','GN','GP','GQ','GR','GS',
                      'GT','GU','GW','GY','HK','HM','HN','HR','HT',
                      'HU','ID','IE','IL','IM','IN','IO','IQ','IR',
                      'IS','IT','JE','JM','JO','JP','KE','KG','KH',
                      'KI','KM','KN','KP','KR','KW','KY','KZ','LA',
                      'LB','LC','LI','LK','LR','LS','LT','LU','LV',
                      'LY','MA','MC','MD','ME','MF','MG','MH','MK',
                      'ML','MM','MN','MO','MP','MQ','MR','MS','MT',
                      'MU','MV','MW','MX','MY','MZ','NA','NC','NE',
                      'NF','NG','NI','NL','NO','NP','NR','NU','NZ',
                      'OM','PA','PE','PF','PG','PH','PK','PL','PM',
                     'PN','PR','PS','PT','PW','PY','QA','RE','RO',
                      'RS','RU','RW','SA','SB','SC','SD','SE','SG',
                      'SH','SI','SJ','SK','SL','SM','SN','SO','SR',
                      'SS','ST','SV','SX','SY','SZ','TC','TD','TF',
                      'TG','TH','TJ','TK','TL','TM','TN','TO','TR',
                      'TT','TV','TW','TZ','UA','UG','UK','UM','US',
                      'UY','UZ','VA','VC','VE','VG','VI','VN','VU',
                      'WF','WS','YE','YT','ZA','ZM','ZW',]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
           ),
       

      ],
    ),

  );
  }
}
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      

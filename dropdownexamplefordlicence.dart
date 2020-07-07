import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Criterias(),
        ),
      ),
    );
  }
}


  bool visibilityTag = false;
  bool visibilityObs = false;

 
 
class NewItem {
  bool isExpanded;
  final String header;
  final Widget body;
  final Icon iconpic;
  NewItem(this.isExpanded, this.header, this.body, this.iconpic);
}

double discretevalue = 2.0;
double hospitaldiscretevalue = 25.0;
 var instructorsOptions;
 class Criterias extends StatefulWidget {
  CriteriaState createState() => new CriteriaState();
}
class CriteriaState extends State<Criterias> {

bool how=false;
  Widget build(BuildContext context) {
    bool how=false;
    List_Criteria = new ListView(
      children: [
        new Padding(
          padding: new EdgeInsets.all(10.0),
          child: new ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() { items[index].isExpanded = !items[index].isExpanded; });
            },
            children: items.map((NewItem item) {
              return new ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return new ListTile(
                      leading: item.iconpic,
                      title: new Text(
                        item.header,textAlign: TextAlign.left,style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400,),
                      ));
                },
                isExpanded: item.isExpanded,
                body: item.body,
              );
            }).toList(),
          ),
        )
      ],
    );
 
    Scaffold scaffold = new Scaffold(
      appBar: new AppBar(
        title: new Text("Criteria Selection"),
      ),
      body: List_Criteria,
      persistentFooterButtons: <Widget>[
        new ButtonBar(children: <Widget>[
          new FlatButton(
            color: Colors.blue,
            onPressed: null,
            child: new Text(
              'Apply',
              textAlign: TextAlign.left,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ])
      ],
    );
    return scaffold;
  }

  List<NewItem> items = <NewItem>[
    new NewItem(
        false,
        'Schools',
        new Padding(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
                children: <Widget>[
          ListTile(
        leading: Text('exminar'),
        onTap:(){},
        trailing:Icon(IconData(58131, fontFamily: 'MaterialIcons')),
        title: DropdownButton<String>(
        hint: Text('Type'),
        icon: Icon(IconData(58131, fontFamily: 'MaterialIcons')),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
        underline: Container(height: 2, color: Colors.deepPurpleAccent,),
        onChanged: (String newValue) {
          
             instructorsOptions = newValue;
            print('instructorsOptions $instructorsOptions');
           }, items: <String>[
          'FE(A)','FE(H)','FE(As)','FE(S)','FE(B)','TRE(A)','TRE(PL)','TRE(H)',
          'CRE','IRE(A)','IRE(H)','IRE(As)','SFE(A)','SFE(PL)','SFE(H)','FIE(A)',
          'FIE(H)','FIE(As)','FIE(S)','FIE(B)'
        ].map<DropdownMenuItem<String>>((String value) =>
          DropdownMenuItem<String>(value: value,child: Text(value),),
        ).toList(),
      
        value: instructorsOptions,
        ),
       ), 
                 
  TextField(
   decoration: InputDecoration(hintText: 'Remarks and Restrictions:'),
   onSubmitted: (String newValue) {}), TextField(
   decoration: InputDecoration(hintText: 'Remarks and Restrictions:'),
   onSubmitted: (String newValue) {}),
           
         ])
          ),new Icon(Icons.add)),
 
              
  ];
 ListView List_Criteria;
 
}
bool how=false;

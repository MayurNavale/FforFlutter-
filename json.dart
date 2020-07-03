  
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
      body:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 
                
            RaisedButton(
              child: Text('insert', style: TextStyle(fontSize: 20),),
              onPressed: () {//_notes[0].title='gdgdf';
              },
            ),
            
            RaisedButton(
              child: Text('query', style: TextStyle(fontSize: 20),),
              onPressed: () {
                a='d';
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
        
        
       
      )
    );
  }
}


class Tutorial {

  String title;
  String description;
  User author;
  List<Tag> tags;

  Tutorial(this.title, this.description, [this.author, this.tags]);


  Map toJson() {
    Map author =
        this.author != null ? this.author.toJson() : null;

    List<Map> tags =
        this.tags != null ? this.tags.map((i) => i.toJson()).toList() : null;

    return {
      'title': title,
      'description': description,
      'author': author,
      'tags': tags
    };
  }
}


class Tag {
  String name;
  int quantity;

  Tag(this.name, this.quantity);

  Map toJson() => {
        'name': name,
        'quantity': quantity,
      };
}
class User {
  String name;
  int age;

  User(this.name, this.age);

  Map toJson() => {
        'name': name,
        'age': age,
      };
}

shoe() {
  User user = User('bezkoder', 21);


  List<Tag> tags = [Tag('tagA', 3), Tag('tagB', 6), Tag('tagC', 8)];

 

  Tutorial tutorial = Tutorial('Dart Tut#2', 'Tut#2 Description', user, tags);
  String jsonTutorial = jsonEncode(tutorial);
  print(jsonTutorial);
}

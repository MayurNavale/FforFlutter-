import 'package:flutter/material.dart';
import 'package:reminder_app/list/tow.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.indigo[900],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Tow(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:the_quran_app/screens/HomaPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Quran',
      theme: ThemeData(
        
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Interactive Quran'),
    );
  }
}


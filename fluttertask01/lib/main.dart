import 'package:flutter/material.dart';
import 'package:fluttertask01/Screens/LoginScreen.dart';
import 'package:fluttertask01/Screens/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
      routes: <String, WidgetBuilder>{
    '/Home': (BuildContext context) => new Home(),
  
  },
    );
  }
}
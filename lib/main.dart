import 'package:flutter/material.dart';
import 'package:fluttertask01/Screens/LoginScreen.dart';
import 'package:fluttertask01/Screens/HomeScreen.dart';

void main() => runApp(MyApp2());

class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
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

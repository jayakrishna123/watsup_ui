import 'package:flutter/material.dart';
import 'package:watsupui/screen/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'watsup Ui',
      theme: ThemeData(primaryColor: new Color(0xff075E54),
      accentColor: new Color(0xff25D366),
      tabBarTheme: TabBarTheme(labelColor: Colors.white),
      textTheme: TextTheme(title:TextStyle(color:Colors.white,fontSize: 16.0),
      body1: TextStyle(color: Colors.black),
      button: TextStyle(color: Colors.white),
      ),
      bottomAppBarColor: Colors.white),
      

      home:Screens(),
    );
  }
}
import 'package:flutter/material.dart';

import 'insta_home.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(headline1: TextStyle(color: Colors.black,fontFamily: "Aveny"),),
        textTheme: TextTheme(headline2: TextStyle(color: Colors.black))
        
      ),
      home: InstaHome(),
    );
  }
}

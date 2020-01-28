import 'package:flutter/material.dart';
import './profile.dart';
import './home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      //initialRoute: '/profile',
      routes: {'/profile': (context) => Profile()},
    );
  }
}

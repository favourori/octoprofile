import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String username;
  final String url = 'https://api.github.com/';
  static String clientId = '3160700241ac0063953b';
  static String clientSecret = '1190e1049d0265ac52bd7201e23a9304ab39e896';
  final String query = "?client_id=$clientId&client_secret=$clientSecret";
  var userProfile;
  var userRepos;

  void getUser() async {
    var profile = await http.get(url + 'users/' + username + query);
    userProfile = jsonDecode(profile.body);
    print(userProfile);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF1D2226),
        body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(22.0, 30.0, 22.0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/logo.png',
                  width: 85.0,
                ),
                SizedBox(
                  height: 90.0,
                ),
                Text(
                  "FIND YOUR OCTOPROFILE",
                  style: TextStyle(
                      fontSize: 23.0, color: Colors.grey.withOpacity(0.8)),
                ),
                SizedBox(
                  height: 70.0,
                ),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      username = value;
                    });
                  },
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Github username',
                    // prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,

                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(1.0),
                    ),
                    //border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  width: 500.0,
                  height: 54.0,
                  child: MaterialButton(
                    textColor: Colors.white.withOpacity(0.8),
                    color: Color(0xFF0070F3),
                    onPressed: () {
                      //todo
                      print(username);
                      getUser();
                    },
                    child: Text("GET PROFILE"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

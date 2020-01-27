import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF1D2226),
        body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/logo.png',
                  width: 85.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "FIND YOUR OCTOPROFILE",
                  style: TextStyle(
                      fontSize: 23.0, color: Colors.grey.withOpacity(0.8)),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Github username',
                    // prefixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,

                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(3.0),
                    ),
                    //border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: 500.0,
                  height: 54.0,
                  child: MaterialButton(
                    textColor: Colors.white.withOpacity(0.8),
                    color: Color(0xFF0070F3),
                    onPressed: () {
                      //todo
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

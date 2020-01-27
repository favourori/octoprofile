import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final profile;

  Profile({this.profile});
  @override
  Widget build(BuildContext context) {
    print(profile);
    return Scaffold(
      appBar: AppBar(
        title: Text(profile["name"]),
      ),
    );
  }
}

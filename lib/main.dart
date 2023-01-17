import 'package:flutter/material.dart';
import 'package:livestream/home.dart';
import 'package:livestream/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'home': (context) => MyHome()
    },
  ));
}


import 'package:flutter/material.dart';
import 'package:hack_blockchain/src/Screens/homeScreen.dart';
import 'constants.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

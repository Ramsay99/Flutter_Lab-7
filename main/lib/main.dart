// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:main/screens/secondscreen.dart';
import 'package:main/structureWidget.dart';
import './screens/firstscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab 7"),
        centerTitle: true,
      ),
      body: StructureWidget.formatPageWidget_Standard(btnsColumn()),
    );
  }

  Column btnsColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        screenBtnNaviagtor(
            BtnText: "First Screen",
            screenName: FirstScreen(),
            backgroundColor: Colors.brown.shade200),
        screenBtnNaviagtor(
            BtnText: "Second Screen",
            screenName: SecondScreen(),
            backgroundColor: Colors.brown.shade200),
      ],
    );
  }

  Container screenBtnNaviagtor({
    required String BtnText,
    required StatefulWidget screenName,
    Color backgroundColor = Colors.brown,
    Color foregroundColor = Colors.black,
  }) {
    return Container(
      width: 250,
      height: 40,
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          foregroundColor: MaterialStateProperty.all(foregroundColor),
        ),
        onPressed: () {
          setState(() {
            print("preesed $BtnText");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return screenName;
                },
              ),
            );
          });
        },
        child: Text(BtnText),
      ),
    );
  }
}

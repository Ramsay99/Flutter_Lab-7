// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/structureWidget.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("** 2nd Screen"),
        centerTitle: true,
      ),
      body: StructureWidget.formatPageWidget_Standard(Text("2:Text Data")),
    );
  }
}

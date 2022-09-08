// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/MyDropDownItems.dart';
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
      backgroundColor: StructureWidget.DEFUALT_BACKGROUND_COLOR,
      appBar: AppBar(
        title: Text("** 2nd Screen **"),
        centerTitle: true,
      ),
      body: StructureWidget.formatPageWidget_Standard(
        networkImage: secondScreenNetowrkImage(),
        childWidget: body(),
      ),
    );
  }

  NetworkImage secondScreenNetowrkImage() {
    return NetworkImage(
        "https://images.pexels.com/photos/3616764/pexels-photo-3616764.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
    //"https://images.pexels.com/photos/3258236/pexels-photo-3258236.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
  }

  ListView body() {
    return ListView(
      children: [
        enterInfo_Msg(),
        Divider(),
        MyDropDownItems(
          question: "How many person?",
          myItems: ["1-9", "10-19", "20-29", "30-39"],
        ),
        Divider(color: Colors.tealAccent, thickness: 3),
        enterClass_Msg(),
      ],
    );
  }

  Container enterInfo_Msg() {
    return askingInput_Msg(
      text: "Please enter your information",
      backgroundColor: Color.fromARGB(205, 255, 228, 145),
      foregroundColor: Colors.black,
    );
  }

  Container askingInput_Msg({
    required String text,
    Color backgroundColor = Colors.transparent,
    Color foregroundColor = Colors.black,
  }) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      color: backgroundColor,
      child: Text(
        text,
        style: TextStyle(
          color: foregroundColor,
          fontSize: 30,
          fontWeight: FontWeight
              .bold, // fontWeight to be removed after adding fontStyle.
        ),
      ),
      alignment: Alignment.topCenter,
    );
  }
}

Container enterClass_Msg() {
  return askingInput_Msg(
    text: "Please Select your Class!",
    foregroundColor: Colors.pink,
  );
}

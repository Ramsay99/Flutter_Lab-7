// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'dart:html';

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
  String radioGroup_Class = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StructureWidget.DEFUALT_BACKGROUND_COLOR,
      appBar: AppBar(
        title: Text("** 2nd Screen **"),
        centerTitle: true,
      ),
      body: StructureWidget.formatPageWidget_Standard(
        networkImage: screen_Two_NetowrkImage(),
        childWidget: body(),
      ),
    );
  }

  NetworkImage screen_Two_NetowrkImage() {
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
        screen_Two_DefaultDivider(),
        enterClass_Msg(),
        radioListTile(
          value: "business",
          title: "Business",
          subTile: "Hot! Only 200\$ per Person",
        ),
        radioListTile(
          value: "economy",
          title: "Economy",
          subTile: "Hot! 150\$ per Person",
          icon: Icon(Icons.money_off_csred),
        ),
        screen_Two_DefaultDivider(),
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

  Divider screen_Two_DefaultDivider() {
    return Divider(color: Colors.tealAccent, thickness: 3);
  }

  Container enterClass_Msg() {
    return askingInput_Msg(
      text: "Please Select your Class!",
      foregroundColor: Colors.pink,
    );
  }

  RadioListTile<String> radioListTile({
    required String value,
    required String title,
    required String subTile,
    Icon icon = const Icon(Icons.attach_money),
  }) {
    return RadioListTile(
      value: value,
      groupValue: radioGroup_Class,
      title: Text(title),
      subtitle: Text(subTile),
      secondary: icon,
      onChanged: (value) {
        setState(() {
          radioGroup_Class = value!.toString();
        });
      },
    );
  }
}

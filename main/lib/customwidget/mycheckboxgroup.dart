// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_final_fields, constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main/screens/secondscreen.dart';

class MyCheckBoxGroup {
  static const Widget NO_WIDGET = Text("NO_WIDGET");
  static bool isAllHaveSecondary = false;
  static Map<String, bool> _allChkBoxes_WithValue = {};
  String _title = "Title";
  String _subtitle = "SubTitle";
  Widget _secondary = NO_WIDGET;

  void addCheckBox({
    bool value = false,
    required String title,
    Widget secondary = NO_WIDGET,
    String subtitle = "",
    // required Function onChange
  }) {
    if (!_allChkBoxes_WithValue.containsKey(title)) {
      _title = title;
      _secondary = secondary;
      _subtitle = subtitle;
      _allChkBoxes_WithValue.addAll({_title: value});
      // print("Added, &now: ==> ${getAll()}");
    } else {
      // print("NOT Added");
    }
  }

  Map getAll() {
    return _allChkBoxes_WithValue;
  }

  String getTitle(int index) {
    // print("Here is getTitle() -> ${getAll().keys.elementAt(index)}");
    return (getAll().keys.elementAt(index));
  }

  String getSubTitle(int index) {
    return _allChkBoxes_WithValue.keys.elementAt(index);
  }

  void setValue(int index, bool newValue) {
    String thisKey = _allChkBoxes_WithValue.keys.elementAt(index);
    bool thisValue = _allChkBoxes_WithValue.values.elementAt(index);
    // print("Value Before -> $thisValue");
    // print(getAll());
    _allChkBoxes_WithValue.addAll({thisKey: newValue});
    thisValue = _allChkBoxes_WithValue.values.elementAt(index);
    // print("Value After -> $thisValue");
    // print(getAll());
  }

  void printThisInfo_ForTesting(int index) {
    // print(_allCheckBoxesForThisObj[index].getTitle());
    // print(_values.values);
  }

  Widget? secondaryWidget() {
    if (_secondary == NO_WIDGET) {
      if (isAllHaveSecondary) {
        return Text("");
      }
      return null;
    }
    return _secondary;
  }
}

// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';

class MyDropDownItems extends StatefulWidget {
  MyDropDownItems({
    super.key,
    String question = "Q:",
    required List<String> myItems,
  }) {
    _question = question;
    _myItems = myItems;
    _currentItemValue = tryGetFirstElementFromList();
  }

  @override
  State<MyDropDownItems> createState() => _MyDropDownItemsState();
}

const String ELEMENT_IF_LIST_ISEMPTY = "EmptyList";
List _myItems = [ELEMENT_IF_LIST_ISEMPTY];
String _currentItemValue = ELEMENT_IF_LIST_ISEMPTY;
String _question = "Q:";

String tryGetFirstElementFromList() {
  String TextIfListIsEmpty = "-";
  if (_myItems.isEmpty) {
    _myItems.add(TextIfListIsEmpty);
  }
  return _myItems[0];
}

class _MyDropDownItemsState extends State<MyDropDownItems> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 30),
          child: Text(
            _question,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          width: 100,
          child: DropdownButtonFormField(
            value: _currentItemValue,
            items: _myItems
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Center(
                        child: Text(e.toString()),
                      ),
                    ))
                .toList(),
            onChanged: (value) {},
            onSaved: (newValue) {
              setState(() {
                _currentItemValue = newValue.toString();
              });
            },
          ),
        ),
      ],
    );
  }
}

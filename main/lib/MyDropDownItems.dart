import 'package:flutter/material.dart';

class MyDropDownItems extends StatefulWidget {
  MyDropDownItems({super.key, String hintMsg = "Hint:"}) {
    _hintMsg = hintMsg;
  }

  @override
  State<MyDropDownItems> createState() => _MyDropDownItemsState();
}

List myitems = ["1", "2", "3-5", "6"];
String currentItemValue = myitems[0];
String _hintMsg = "";

class _MyDropDownItemsState extends State<MyDropDownItems> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonFormField(
        hint: Text(_hintMsg),
        value: currentItemValue,
        items: myitems
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
            currentItemValue = newValue.toString();
          });
        },
      ),
    );
  }
}

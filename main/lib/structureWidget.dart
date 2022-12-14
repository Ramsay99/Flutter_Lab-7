// ignore_for_file: non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:main/screens/firstscreen.dart';
import 'package:main/screens/secondscreen.dart';
import 'package:main/main.dart';

class StructureWidget {
  static const double _width = 550;
  static const Color DEFUALT_BACKGROUND_COLOR = Colors.brown;

  static Center formatPageWidget_Standard({
    required Widget childWidget,
    ImageProvider networkImage = const NetworkImage(
        "https://images.pexels.com/photos/4388167/pexels-photo-4388167.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
  }) {
    return Center(
      child: Container(
        width: _width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: networkImage,
            fit: BoxFit.cover,
          ),
        ),
        child: childWidget,
      ),
    );
  }
}

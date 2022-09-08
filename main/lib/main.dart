// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lab 7"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.brown.shade900,
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/4388167/pexels-photo-4388167.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                screenBtnNaviagtor("First Screen"),
                screenBtnNaviagtor("Second Screen"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container screenBtnNaviagtor(String BtnText) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(BtnText),
      ),
    );
  }
}

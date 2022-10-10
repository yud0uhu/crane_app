import 'package:crane_app/header.dart';
import 'package:flutter/material.dart';
import 'package:crane_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: const Color.fromRGBO(93, 16, 73, 1),
          primarySwatch: Colors.grey),
      home: Scaffold(
          body: Stack(
        children: <Widget>[
          Header(),
          Container(padding: const EdgeInsets.only(top: 370), child: HomePage())
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled/screens/Details/details.dart';
import 'package:untitled/screens/categories.dart';
import 'package:untitled/screens/home.dart';
import 'package:untitled/screens/login.dart';
import 'package:untitled/1.dart';

void main() {
  runApp(getMyAppRootWidget());
}

Widget getMyAppRootWidget() {
  Widget materialAppWidget = new MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  );
  return materialAppWidget;
}

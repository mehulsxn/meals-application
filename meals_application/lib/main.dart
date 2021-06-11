import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meals_application/screens/category_screen.dart';
import 'package:meals_application/screens/tab_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  List<Widget> favourites = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tabscreen(),
    );
  }
}
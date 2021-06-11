import 'package:flutter/material.dart';
import 'package:meals_application/screens/preparation_screen.dart';
import 'package:meals_application/widgets/receipe.dart';

class CategoriesReceipe extends StatelessWidget {
  final String name;
  final String imageurl;
  final List<Widget> allreciepes;

  CategoriesReceipe({this.allreciepes, this.name,this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text(name),
      ),
      body: allreciepes.length==0?  Center(child: Text('no receipes added yet'),)
        : ListView(
          children: allreciepes,
        ),

    );
  }
}

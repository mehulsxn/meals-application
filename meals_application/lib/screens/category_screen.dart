import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_application/data/category_list.dart';
import 'package:meals_application/widgets/categort.dart';
import 'package:meals_application/widgets/drawer.dart';

class CategoryScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Categories'),
      ),
      drawer: Drawer(
          child: MyDrawer(),
      ),
      body: GridView.builder(
        itemCount: categories_list.length,
        itemBuilder: (context, index) {
          return categories_list[index];
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}

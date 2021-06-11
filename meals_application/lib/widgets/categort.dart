import 'package:flutter/material.dart';
import 'package:meals_application/screens/categories_receipe.dart';

class Category extends StatelessWidget {
  final int id;
  final String name;
  final String imageurl;
  final List<Widget> allreciepes;

  Category({this.allreciepes,this.id,this.name, this.imageurl,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => CategoriesReceipe(
                  name: name,
              allreciepes: allreciepes,
                )));
      },
      child: Container(
        //padding: EdgeInsets.all(14),
        margin: EdgeInsets.all(10),
        height: 160,
        width: 160,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Container(
          height: 160,
          width: 160,
          child: Column(
            children: [
              Container(
                height: 160,
                width: 160,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(imageurl, fit: BoxFit.cover),
                ),
              ),
              Text(name),
            ],
          ),
        ),
      ),
    );
  }
}

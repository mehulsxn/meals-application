import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_application/screens/preparation_screen.dart';


class Receipe extends StatelessWidget {
  final String imageurl;
  final String name;
  final String difficulty;
  final String money;

  Receipe({this.name, this.imageurl, this.difficulty, this.money});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => PreparationScreen(
              name: name,
              imageurl: imageurl,

            )));
      },
      child: Card(
        elevation: 15,
        margin: EdgeInsets.all(12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          height: 215,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.only(bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Container(
                      height: 160,
                      width: double.infinity,
                      child: Image.network(
                         imageurl,
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 20,
                    child: buildText(),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildTextIcon('20 min', Icons.access_time),
                  buildTextIcon('simple', Icons.cake_outlined),
                  buildTextIcon('affordable', Icons.monetization_on_outlined),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildText() {
    return Container(
      height: 70,
      width: 180,
      color: Colors.black.withOpacity(0.5),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget buildTextIcon(String text, IconData icon) {
    return Row(
      children: [
        Icon(icon),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ],
    );
  }
}



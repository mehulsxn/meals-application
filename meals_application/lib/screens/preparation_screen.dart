import 'package:flutter/material.dart';

class PreparationScreen extends StatefulWidget {
  final String name;
  final String imageurl;

  PreparationScreen({this.name, this.imageurl});

  @override
  _PreparationScreenState createState() => _PreparationScreenState();
}

class _PreparationScreenState extends State<PreparationScreen> {
  bool isfavrt = false;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar:
          AppBar(title: Text(widget.name), backgroundColor: Colors.pinkAccent),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: mq.height*0.3,
              width: mq.width*1.0,
              color: Colors.grey,
              child: Image.network(
                widget.imageurl,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'ingredients',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: 12),
            Container(
              height: mq.height*0.25,
              width: mq.width*0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black, width: 1),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildItem('4 tomato'),
                    buildItem('1 oil'),
                    buildItem('1 onion'),
                    buildItem('250 g spaghetti'),
                  ],
                ),
              ),
            ),
            Text(
              'steps',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(8),
              height: mq.height*0.25,
              width: mq.width*0.73,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black, width: 1)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildStep('cut the onion', 1),
                    buildStep('boil the water', 2),
                    buildStep('add some salt', 3),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isfavrt = !isfavrt;
          });
        },
        backgroundColor: Colors.amber,
        child: isfavrt
            ? Icon(
                Icons.favorite,
                color: Colors.black,
              )
            : Icon(
                Icons.favorite_border_rounded,
                color: Colors.black,
              ),
      ),
    );
  }

  Widget buildItem(String text) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        height: 40,
        width: double.infinity,
        child: Center(
          child: Text(text),
        ),
        color: Colors.amber);
  }

  Widget buildStep(String text, int count) {
    
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.redAccent,
            child: Text(
              '#$count',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 200,
            child: Text(text),
          )
        ],
      ),
    );
  }
}

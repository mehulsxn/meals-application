import 'package:flutter/material.dart';
import 'package:meals_application/screens/category_screen.dart';
import 'package:meals_application/screens/favourite.dart';

class Tabscreen extends StatefulWidget {
  @override
  _TabscreenState createState() => _TabscreenState();
}

class _TabscreenState extends State<Tabscreen> {
  List<Widget> screens = [CategoryScreen(), FavouriteScreen()];

  int pageindex = 0;

  void changeindex(int index) {
    pageindex = index;

    print(pageindex);
    setState(() {});
    print(pageindex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[pageindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageindex,
        onTap: changeindex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: 'categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'favourite'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Drawer(
      child: Container(
        color: Colors.pinkAccent,
        child: Column(
          children: [
            Container(

              margin: EdgeInsets.only(top: mq.height * 0.05),
              height: mq.height * 0.24,
              child: Column(
                children: [
                  Container(
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg',
                      fit: BoxFit.cover,
                    ),
                    width: mq.width * 0.5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'MENUBAR',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ],
              ),
            ),
            buildDrawerTile('Notification', Icons.notification_add_outlined),
            buildDrawerTile('Report', Icons.report),
            buildDrawerTile('Settings', Icons.settings),
            buildDrawerTile('Logout', Icons.exit_to_app),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerTile(String text, IconData data) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            width: 50,
          ),
          Icon(
            data,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}

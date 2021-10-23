import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.article),
              title: Text('all'),
              onTap: () {},
            ),
            Divider(
              color: Colors.black,
              height: 2,
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('startup'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('national //Indian News only'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('business'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('sports'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('world'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('politics'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('technology'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('startup'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('entertainment'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('miscellaneous'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('hatke'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('science'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('automobile'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

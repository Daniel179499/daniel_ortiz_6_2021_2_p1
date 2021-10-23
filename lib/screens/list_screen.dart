import 'dart:convert';

import 'package:daniel_ortiz_6_2021_2_p1/helpers/constans.dart';
import 'package:daniel_ortiz_6_2021_2_p1/models/token_news.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
              onTap: () {
                _news('all');
              },
            ),
            Divider(
              color: Colors.black,
              height: 2,
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('startup'),
              onTap: () {
                _news('startup');
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('national //Indian News only'),
              onTap: () {
                _news('national //Indian News only');
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('business'),
              onTap: () {
                _news('business');
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('sports'),
              onTap: () {
                _news('sports');
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('world'),
              onTap: () {
                _news('world');
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('politics'),
              onTap: () {
                _news('politics');
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('technology'),
              onTap: () {
                _news('technology');
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('startup'),
              onTap: () {
                _news('startup');
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('entertainment'),
              onTap: () {
                _news('entertainment');
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('miscellaneous'),
              onTap: () {
                _news('miscellaneous');
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('hatke'),
              onTap: () {
                _news('hatke');
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('science'),
              onTap: () {
                _news('science');
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('automobile'),
              onTap: () {
                _news('automobile');
              },
            ),
          ],
        ),
      ),
    );
  }

  void _news(String typenews) async {
    var url = Uri.parse('${Constans.apiUrl}science');
    var response = await http.get(
      url,
      headers: {
        'content-type': 'application/json',
        'accept': 'application/json',
      },
    );

    print(response.body);
  }
}

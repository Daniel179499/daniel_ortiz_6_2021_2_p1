import 'package:daniel_ortiz_6_2021_2_p1/models/categories_news.dart';
import 'package:daniel_ortiz_6_2021_2_p1/models/data_news.dart';
import 'package:daniel_ortiz_6_2021_2_p1/screens/list_screen.dart';
import 'package:flutter/material.dart';

class DetailNews extends StatefulWidget {
  final categorynews Categorynews;

  DetailNews({required this.Categorynews});

  @override
  _DetailNewsState createState() => _DetailNewsState();
}

class _DetailNewsState extends State<DetailNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      drawer: _getCustomerMenu(),
      body: _getBody(),
    );
  }

  Widget _getBody() {
    return Container(
      child: Center(
        child: Text('Data news ${widget.Categorynews.data[0]}}'),
      ),
    );
  }

  Widget _getCustomerMenu() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Atras'),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ListScreen()));
            },
          ),
        ],
      ),
    );
  }
}

import 'dart:convert';

import 'package:daniel_ortiz_6_2021_2_p1/components/loader_component.dart';
import 'package:daniel_ortiz_6_2021_2_p1/helpers/constans.dart';
import 'package:daniel_ortiz_6_2021_2_p1/models/categories_news.dart';
import 'package:daniel_ortiz_6_2021_2_p1/models/data_news.dart';
import 'package:daniel_ortiz_6_2021_2_p1/screens/detail_news.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:connectivity/connectivity.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  bool _showLoader = false;

  Widget _showLogo(BuildContext context) {
    return new Scaffold(
        body: new Container(
      child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Image.asset(
              "assets/News.png",
              alignment: Alignment.centerRight,
              height: 500,
              width: 400,
            )
          ]),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          _showLogo(context),
          Center(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Divider(
                  color: Colors.black,
                  height: 40,
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('all'),
                  onTap: () {
                    setState(() {
                      _showLoader = true;
                    });
                    _news('all');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('startup'),
                  onTap: () {
                    setState(() {
                      _showLoader = true;
                    });
                    _news('startup');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('national //Indian News only'),
                  onTap: () {
                    setState(() {
                      _showLoader = true;
                    });
                    _news('national //Indian News only');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('business'),
                  onTap: () {
                    setState(() {
                      _showLoader = true;
                    });
                    _news('business');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('sports'),
                  onTap: () {
                    setState(() {
                      _showLoader = true;
                    });
                    _news('sports');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('world'),
                  onTap: () {
                    setState(() {
                      _showLoader = true;
                    });
                    _news('world');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('politics'),
                  onTap: () {
                    setState(() {
                      _showLoader = true;
                    });
                    _news('politics');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('technology'),
                  onTap: () {
                    setState(() {
                      _showLoader = true;
                    });
                    _news('technology');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('startup'),
                  onTap: () {
                    setState(() {
                      _showLoader = true;
                    });
                    _news('startup');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('entertainment'),
                  onTap: () {
                    setState(() {
                      _showLoader = true;
                    });
                    _news('entertainment');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('miscellaneous'),
                  onTap: () {
                    setState(() {
                      _showLoader = true;
                    });
                    _news('miscellaneous');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('hatke'),
                  onTap: () {
                    setState(() {
                      _showLoader = true;
                    });
                    _news('hatke');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('science'),
                  onTap: () {
                    setState(() {
                      _showLoader = true;
                    });
                    _news('science');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('automobile'),
                  onTap: () {
                    setState(() {
                      _showLoader = true;
                    });
                    _news('automobile');
                  },
                ),
              ],
            ),
          ),
          _showLoader
              ? LoaderComponent(
                  text: 'Por favor espere...',
                )
              : Container(),
        ],
      ),
    );
  }

  void _news(String typenews) async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      setState(() {
        _showLoader = false;
      });

      await showAlertDialog(
          context: context,
          title: 'Error',
          message: 'Verifica conexión a internet.',
          actions: <AlertDialogAction>[
            AlertDialogAction(key: null, label: 'Aceptar'),
          ]);
      return;
    }

    var url = Uri.parse('${Constans.apiUrl}$typenews');
    var response = await http.get(
      url,
      headers: {
        'content-type': 'application/json',
        'accept': 'application/json',
      },
    );

    //print(response.body);
    setState(() {
      _showLoader = false;
    });

    var body = response.body;
    var decodedJson = jsonDecode(body);
    var Categorynews = categorynews.fromJson(decodedJson);
    print(Categorynews.data);
    print(response.body);

    if (decodedJson != null) {
      //print('NOT NULL');
    }

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => DetailNews(
                  Categorynews: Categorynews,
                )));
  }
}

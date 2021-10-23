import 'package:daniel_ortiz_6_2021_2_p1/models/token_news.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  final Token token;

  NewsScreen({required this.token});

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prueba'),
      ),
      body: _getBody(),
    );
  }

  Widget _getBody() {
    return Center(
      child: Text('Noticia ${widget.token.data} '),
    );
  }
}

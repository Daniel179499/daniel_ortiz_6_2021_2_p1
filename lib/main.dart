import 'package:daniel_ortiz_6_2021_2_p1/screens/list_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News',
      home: ListScreen(),
    );
  }
}

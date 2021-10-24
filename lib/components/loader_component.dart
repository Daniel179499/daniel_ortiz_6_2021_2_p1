import 'package:flutter/material.dart';

class LoaderComponent extends StatelessWidget {
  final String text;

  LoaderComponent({this.text = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircularProgressIndicator(),
          Text(text),
        ],
      ),
    );
  }
}

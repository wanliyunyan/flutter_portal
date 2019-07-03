import 'package:flutter/material.dart';
import 'package:flutter_portal/component/second/second.dart';

class FirstA extends StatelessWidget {
  final String name;

  FirstA({this.name});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new RaisedButton(
          child: Text(name),
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new Second()),
            );
          }),
    );
  }
}

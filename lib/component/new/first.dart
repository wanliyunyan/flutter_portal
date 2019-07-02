import 'package:flutter/material.dart';
class FirstA extends StatelessWidget{
  final String name;
  FirstA({this.name});
  @override
  Widget build(BuildContext context) {
    return new Container(
        child:Text(name)
    );
  }
}
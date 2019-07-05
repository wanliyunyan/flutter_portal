import 'package:flutter/material.dart';
import 'package:flutter_portal/router/bottomNav/nav.dart';
import 'package:provider/provider.dart';
import './model/modelOne.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "test",
      home:ChangeNotifierProvider<Counter>(
      builder: (_) => Counter(),
      child: BottomNavigationWidget()),
    );
  }
}

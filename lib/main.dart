import 'package:flutter/material.dart';
import 'package:flutter_portal/component/new/first.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "test",
        home: Scaffold(
            appBar: AppBar(title: Center(child: Text("主页"))),
            body: Center(child:FirstA(name:"我传递eee进12321321321321来了!"))
        )
    );
  }
}

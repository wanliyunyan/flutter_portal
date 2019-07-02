import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "test",
        home: Scaffold(
            appBar: AppBar(title: Center(child: Text("主页"))),
            body: Center(child:FirstA("我传递进来了!"))
        )
    );
  }
}
class FirstA extends StatelessWidget{
  final String name;
  FirstA(this.name);
  @override
  Widget build(BuildContext context) {
    return new Container(
        child:Text(name)
    );
  }
}
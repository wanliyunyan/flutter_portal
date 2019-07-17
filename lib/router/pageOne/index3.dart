import 'package:flutter/material.dart';
import 'index4.dart';

class OneThree extends StatefulWidget {
  @override
  _OneThreeState createState() => _OneThreeState();
}

class _OneThreeState extends State<OneThree> with SingleTickerProviderStateMixin{
  TabController _controller;
  @override
  void initState(){
    super.initState();
    _controller = TabController(length:3,vsync: this);
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("3232"),
        bottom: TabBar(
          controller:_controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.ac_unit)),Tab(icon: Icon(Icons.ac_unit)),Tab(icon: Icon(Icons.ac_unit))
          ],
        ),
      ),
      body: TabBarView(
        controller:_controller,
        children: <Widget>[
          OneFour(),
          OneFour(),
          OneFour(),
        ],
      ),
    );
  }
}
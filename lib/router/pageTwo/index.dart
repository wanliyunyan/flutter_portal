import 'package:flutter/material.dart';

class TwoWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Two();
  }
}

class Two extends State<TwoWidget>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第二页'),
      ),
      body: new Center(
        child: Icon(Icons.label_outline,size: 130.0,color: Colors.blue,),
      ),
    );
  }
}
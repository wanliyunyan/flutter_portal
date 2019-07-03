import 'package:flutter/material.dart';

class FourWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Four();
  }
}

class Four extends State<FourWidget>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第四页'),
      ),
      body: new Center(
        child: Icon(Icons.warning,size: 130.0,color: Colors.blue,),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ThreeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Three();
  }
}

class Three extends State<ThreeWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第三页'),
      ),
      body: new Center(
        child: Icon(
          Icons.lightbulb_outline,
          size: 130.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}

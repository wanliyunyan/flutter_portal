import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          appBar: AppBar(title: Center(child: Text("主页"))),
          body:  Column(
            children: <Widget>[
              new Container(
                child: new RaisedButton(
                  child: new Text('Go back!'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              new Text("我是second")
            ],
          )
      );

  }
}

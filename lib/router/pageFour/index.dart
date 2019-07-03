import 'package:flutter/material.dart';

class FourWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Four();
  }
}

class Four extends State<FourWidget>{
  int index=1;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第四页'),
      ),
      body: new Center(
        child:Column(children: <Widget>[
          Icon(Icons.warning,size: 130.0,color: Colors.blue,),
          Text("$index 计数"),
          MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: new Text('点我'),
            onPressed: () {
              setState(() {
                index ++;
              });
            },
          )
        ],)
      ),
    );
  }
}
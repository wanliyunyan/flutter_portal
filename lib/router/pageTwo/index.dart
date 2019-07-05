import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/modelOne.dart';
class TwoWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Two();
  }
}

class Two extends State<TwoWidget>{
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<Counter>(context);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第二页'),
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            Icon(Icons.label_outline,size: 130.0,color: Colors.blue,),
              RaisedButton(
                child: Text("点我"),
                onPressed:appState.increment
              ),
            Text("${appState.getText} 次")
          ],
        )
      ),
    );
  }
}
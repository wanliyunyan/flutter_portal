import 'package:flutter/material.dart';

class FourWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Four();
  }
}

class Four extends State<FourWidget>{
  final arr=List<Widget>.generate(5,(i){
    return Card(
      child: Image.network('http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg'),

    );
    /*return Container(
      height: 250.00,
      width:  double.infinity,
      margin: EdgeInsets.all(5.00),
      decoration: new BoxDecoration(
        image:DecorationImage(
          image: NetworkImage('http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg'),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Card(
        margin: EdgeInsets.fromLTRB(0.0, 200.0, 0.0, 0.0),
        child: Text('哈哈去哈哈哈哈',style:new TextStyle(color: Colors.lightGreen),),
      ),
    );*/
  });
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第四页'),
      ),
      body: Column(
        children:arr
      )
    );
  }
}
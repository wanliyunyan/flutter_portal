import 'package:flutter/material.dart';
import 'package:flutter_portal/router/pageFour/detail.dart';

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
      body: new ListView.builder(
        itemCount: 10,
        itemBuilder: _listBuilder,
      )
    );
  }
}

Widget _listBuilder(BuildContext context, int index) {
  return new Container(
    padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 10.0),
    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
    decoration: new BoxDecoration(
      boxShadow: <BoxShadow>[
        new BoxShadow(
          color: const Color(0x99000000),
          offset: new Offset(0.0, 0.5),
          blurRadius: 1.0,
        ),
      ],
      color: Colors.white,
      borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
    ),
    child: new Row(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Expanded(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                margin: new EdgeInsets.only(bottom: 10.0),
                child: new Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562231985172&di=06193c8fba04112390863d6a23c0a111&imgtype=0&src=http%3A%2F%2Fb.zol-img.com.cn%2Fdesk%2Fbizhi%2Fimage%2F1%2F960x600%2F1350915475596.jpg'
                ),
              ),
              new Text(
                "哈哈去哈哈哈哈",
                style: new TextStyle(fontSize: 14, color: Colors.black45,),
              ),
              /*new GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new NewsDetailWidget()),
                  );
                },
              )*/
            ],
          ),
        ),
      ],
    ),
  );
  /*return new Container(
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
}

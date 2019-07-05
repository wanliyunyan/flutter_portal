import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/modelOne.dart';

class TwoWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Two();
  }
}

class Two extends State<TwoWidget> {
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
          RaisedButton(child: Text("点我"), onPressed: appState.fetchData),
          Container(
            height: appState.isFetching ? 50.0 : 400.0,
            child: appState.isFetching
                ? CircularProgressIndicator()
                : appState.getResponseJson() != null
                    ? ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: appState.getResponseJson().length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  appState.getResponseJson()[index]['avatar']),
                            ),
                            title: Text(
                              appState.getResponseJson()[index]["first_name"],
                            ),
                          );
                        },
                      )
                    : Text("点按钮请求数据"),
          )
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_portal/assert.dart';

class OneFive extends StatefulWidget {
  @override
  _OneFiveState createState() => _OneFiveState();
}

class _OneFiveState extends State<OneFive> {
  List<Widget> list;
  @override
  void initState(){
    super.initState();
    list = List<Widget>()..add(buildAddImage());
  }
  Widget buildAddImage(){
    return GestureDetector(
      onTap: (){
        setState((){
          if(list.length<9){
            list.insert(list.length-1,buildPhoto());
          }
        });
      },
      child: Padding(
        padding:const EdgeInsets.all(2.0),
        child: Container(
          width:100.0,
          height:100.0,
          color:Colors.grey,
          child: Icon(Icons.add),
        ),
      )
    );
    
  }
  Widget buildPhoto(){
    return Padding(
      padding:const EdgeInsets.all(2.0),
      child: Container(
         width:100.0,
          height:100.0,
          color:Colors.yellow,
          child: Text("图片")
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:AppBar(
        title: Text("搜索栏"),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.search),
            onPressed: ()=>{
                showSearch(context: context,delegate: searchBarDelegate())
            },
          )
        ],
      ),
      body: Opacity(
          opacity: 0.8,
          child:Column(
            children: <Widget>[
                Center(
                 child:(
                  ExpansionTile(
                      title: Text("3232"),
                      leading: Icon(Icons.snooze),
                      backgroundColor: Colors.white12,
                      children: <Widget>[
                        ListTile(
                          title: Text("3423"),
                          subtitle: Text("42342"),
                        )
                      ],
                  )
                 ) 
                ),
                Center(
                  child: Container(
                    width: width,
                    height: height/2,
                    color: Colors.white,
                    child: Wrap(
                      children: list,
                      spacing: 4.0,
                    ),
                  ),
              ),
            ],
          )
      )
    );
  }
}

class searchBarDelegate extends SearchDelegate{
  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: ()=>query="",
      )
    ];
  }
  @override
  Widget buildLeading(BuildContext context){
    return IconButton(
      icon:AnimatedIcon(
        icon: AnimatedIcons.arrow_menu,
        progress: transitionAnimation,
      ),
      onPressed: ()=>close(context,null)
    );
  }
  @override
  Widget buildResults(BuildContext context){
    return Container(
      height:200.0,
      width:200.0,
      color:Colors.red,
      child: Center(
        child:Text(query)
      ),
    );
  }
  @override
  Widget buildSuggestions(BuildContext context){
    final suggestList = query.isEmpty?
    recentSuggest:searchList.where((input)=>input.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestList.length,
      itemBuilder: (context,index)=>ListTile(
        title: RichText(
          text: TextSpan(
            text: suggestList[index].substring(0,query.length),
            style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text:  suggestList[index].substring(query.length),
                 style: TextStyle(color:Colors.grey),
              )
            ]
          ),
        ),
      ),
    );
  }
}
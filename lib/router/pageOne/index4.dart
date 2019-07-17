import 'package:flutter/material.dart';
import 'index5.dart';
class OneFour extends StatefulWidget {
  @override
  _OneFourState createState() => _OneFourState();
}

class _OneFourState extends State<OneFour> with AutomaticKeepAliveClientMixin{
  int _current = 0;
  @override
  bool get wantKeepAlive =>true;

  void incrementCounter(){
    setState((){
      _current++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            child: ClipPath(
              child: Container(
                height:200.0,
                color: Colors.lightBlue,
              ),
              clipper:BottomClipper(),
            ),
          ),
          Text("点一下加一"),
          Text("$_current",style: TextStyle(fontSize: 64.0),),
          MaterialButton(
            child: Icon(Icons.add),
            onPressed: (){
               Navigator.of(context).push(
                 MaterialPageRoute(
                   builder: (BuildContext context){
                     return OneFive();
                   }
                 )
               );
            },
          )
        ],
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: incrementCounter,
      tooltip:"45",
      child: Icon(Icons.add),
    ),
    );
  }
}
class BottomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = Path();
    path.lineTo(0,0);
    path.lineTo(0,size.height-50.0);
    var firstControlPointer = Offset(size.width/4,size.height);
    var firstEndPointer = Offset(size.width/2,size.height-50.0);
    path.quadraticBezierTo(firstControlPointer.dx,firstControlPointer.dy,firstEndPointer.dx,firstEndPointer.dy);
    var secondControlPointer = Offset(size.width/4*3,size.height-100.0);
    var secondEndPointer = Offset(size.width,size.height-50.0);
    path.quadraticBezierTo(secondControlPointer.dx,secondControlPointer.dy,secondEndPointer.dx,secondEndPointer.dy);
    path.lineTo(size.width,size.height-50.0);
    path.lineTo(size.width,0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return false;
  }

}
import 'package:flutter/material.dart';
import 'draggable_widget.dart';
class OneTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color _draggableColor = Colors.grey;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DraggableDemo(
            offset:Offset(80.0,80.0),
            color: Colors.blue,
          ),
           DraggableDemo(
            offset:Offset(80.0,180.0),
            color: Colors.red,
          ),
          Center(
            child: DragTarget(
              onAccept: (Color color){
                  _draggableColor = color;
              },
              builder: (){
                return Container(
                  width: 200.0,
              height: 200.0,
              color: _draggableColor,
                )
              },
            ),
          )
        ],
      ),
    )
  }
}
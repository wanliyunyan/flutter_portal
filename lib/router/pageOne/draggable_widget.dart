import 'package:flutter/material.dart';
class DraggableDemo extends StatefulWidget {
  final Offset offset;
  final Color color;
  DraggableDemo({Key key,this.color,this.offset}):super(key:key);
  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  Offset offset = Offset(0.0,0.0);
  @override
  void initState(){
    super.initState();
    this.offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        data:widget.color,
        child: Container(
            width:100.0,
            height:100.0,
            color: widget.color,
        ),
        feedback:  Container(
            width:100.0,
            height:100.0,
            color: widget.color.withOpacity(0.5),
        ),
        onDraggableCanceled:(Velocity velocity, Offset offset){
          setState(() {
           this.offset = offset; 
          });
        }
      )
    );
  }
}
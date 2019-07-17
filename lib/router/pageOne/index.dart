import 'package:flutter/material.dart';
import 'index2.dart';

class OneWidget extends StatefulWidget{
@override
  State<StatefulWidget> createState() {
    return new One();
  }
}

class One extends State<OneWidget>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: 
        Center(
         child:(
            MaterialButton(
                child:(
                  Icon(Icons.add,size:64.0,color: Colors.red)
                ),
                onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder:(
                          BuildContext context
                        ){
                          return OneTwo();
                        }
                      )
                    );
                },
              )
         ) 
        )
      
       
    );
  }
}
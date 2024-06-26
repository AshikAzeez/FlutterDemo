import 'package:flutter/material.dart';

//FIXME:Material is used for adding material design to widget.Material is general Widget
class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(70.0),
        //center is very generic container

        child: new Center(
          child: new Text(
            "Hello Everyone",
            textDirection: TextDirection.ltr,
            softWrap: true,
            style: new TextStyle(
              inherit: true,
              color: Colors.deepPurple,
              fontSize: 70.0,
              fontStyle: FontStyle.italic,
              letterSpacing: 2.0,
              wordSpacing: 1.0,
            ),
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.green,
      alignment: Alignment.center,
      //Text Child
      /*child: new Text(
        "Hello Container Text",
        textDirection: TextDirection.ltr,
        style: new TextStyle(
            color: Colors.teal, fontWeight: FontWeight.w900, fontSize: 18.5),
      ),*/

      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "First item",
            textDirection: TextDirection.ltr,
            style: new TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          new Text(
            "Second item",
            textDirection: TextDirection.ltr,
            style: new TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          new Text(
            "Third item",
            textDirection: TextDirection.ltr,
            style: new TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          new Container(
              color: Colors.blue.shade50,
              alignment: Alignment.bottomLeft,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Row item1",
                    textDirection: TextDirection.ltr,
                    style: new TextStyle(fontSize: 12.9),
                  ),
                  new Text(
                    "Row Item2",
                    textDirection: TextDirection.ltr,
                    style: new TextStyle(fontSize: 12.9),
                  ),
                  const Expanded(
                      child: const Text(
                    "Text inside expanded widget",
                    textDirection: TextDirection.ltr,
                  )),
                  new Text(
                    "Roew Item3",
                    textDirection: TextDirection.ltr,
                    style: new TextStyle(fontSize: 12.9),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

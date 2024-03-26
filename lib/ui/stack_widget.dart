import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          const Text("Stack elem1"),
          const Text("elem2"),
          const Text("3"),
        ],
      ),
    );
  }
}

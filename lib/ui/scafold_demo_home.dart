import 'package:flutter/material.dart';

class ScafoldHome extends StatelessWidget {
  final String
      title; //all instance variable inside the StatelessWidget is final

  ScafoldHome({Key key, this.title}) : super(key: key);

  void _onPress() {
    print("Option menu item clicked");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amberAccent.shade700,
        title: new Text(
          "SCAFFOLD SAMPLE",
          textDirection: TextDirection.ltr,
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: () => debugPrint("Icon clicked"),
            color: Colors.blue.shade700,
          ),
          new IconButton(
            icon: new Icon(Icons.ondemand_video),
            onPressed: _onPress,
            color: Colors.deepOrange.shade900,
          ),
          new IconButton(
            icon: new Icon(Icons.palette),
            onPressed: _onPress,
            color: Colors.green.shade700,
          ),
          new IconButton(
            icon: new Icon(Icons.perm_data_setting),
            onPressed: _onPress,
            color: Colors.black87,
          ),
          new Text(
            "Text",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
              color: Colors.black87,
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ),
      backgroundColor: Colors.grey.shade300,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Text 1",
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                  color: Colors.deepOrange.shade700,
                  fontWeight: FontWeight.w900,
                  fontSize: 20.0),
            ),
            new InkWell(
              child: const Text("Button"),
              onTap: _onPress,
              onDoubleTap: null,
              onLongPress: null,
              onHighlightChanged: null,
              onTapCancel: null,
              onTapDown: null,
            ),
            new CustomButton()
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onPress,
        backgroundColor: Colors.deepOrange,
        tooltip: 'Add',
        child: new Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        fixedColor: Colors.red,
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text(
                "Home",
                textDirection: TextDirection.ltr,
              )),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.notifications_active),
              title: new Text(
                "Notifications",
                textDirection: TextDirection.ltr,
              )),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.message),
              title: new Text(
                "Message",
                textDirection: TextDirection.ltr,
              )),
        ],
        onTap: (int i) => debugPrint("Bottom icon touched $i"),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        final snackBar = new SnackBar(
          content: new Text("Hellow Gesture"),
          backgroundColor: Colors.deepPurple,
          duration: new Duration(
              days: 0,
              hours: 0,
              minutes: 0,
              seconds: 1,
              milliseconds: 900,
              microseconds: 90),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: new Container(
        padding: new EdgeInsets.all(18.0),
        decoration: new BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: new BorderRadius.circular(5.5),
        ),
        child: new Text(
          "Button",
          style: new TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}

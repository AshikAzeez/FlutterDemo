import 'package:flutter/material.dart';
import './ui/home.dart';
import './ui/stack_widget.dart';
import './ui/scafold_demo_home.dart';
import './ui/make_it_rain.dart';
import './form/login.dart';

void main() {
  //runApp comes from flutter frame work
  //FIXME:MaterialApp not generic it for App material design

  //FIXME:Adding welcome_home screen
  /*runApp(new MaterialApp(
    title: "Welcome Acticyt",
    home: new Welcome(),
  ));*/

/*
  runApp(new MaterialApp(
    color: Colors.indigo,
    title: "Hello container",
    home: new Home(),
  ));*/

  /*runApp(new MaterialApp(
    color: Colors.indigo,
    title: "Hello container",
    home: new StackWidget(),
  ));*/

  /*var title = "Gesture";
  runApp(new MaterialApp(
    color: Colors.indigo,
    title: title,
    home: new ScafoldHome(
      title: title,
    ),
  ));*/

  /*var title = "Gesture";
  runApp(new MaterialApp(
    color: Colors.indigo,
    title: title,
    home: new MakeItRain(),
  ));*/

  runApp(new MaterialApp(
    color: Colors.indigo,
    title: "Login sample",
    home: new Login(),
  ));
}

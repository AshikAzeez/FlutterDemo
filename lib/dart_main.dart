import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:sample/TesterLibs.dart' as TesterLibs;
import 'dart:developer' as logger;
import 'dart:math' as math;

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random(); //English word library

    return MaterialApp(
      title: 'Welcome to Flutter asdf',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter ASDF'),
        ),
        body: new Center(
          //  child: Text(wordPair.asPascalCase),
          //child: Text('Hello world'),
          child: new RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => RandomWordState();
}

class RandomWordState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    var sample = new Sample('Ashik', 22);
    //FIXME:we can write getters and setter 2 types
    //1
    sample.age; //getter
    sample.age = 23; //setter
    //2
    sample.setName = "Manu"; //sette
    sample.getName; //getter

    //inheritance sample
    var _bonny = new Bonny("Ashik");
    //method inherited from paren class
    _bonny.showName();
    _bonny.name;
    _bonny.nationality;
    _bonny.profession = "Android develope";
    _bonny.showProfession();
    var paulo = new Paulo("Ashik");
    paulo.nationality;
    /*paulo
        .toString(); //when we overide toString we dont need this line just type like this:::*/
    print(paulo);

    //List(Arrays)
    var list = [1, 4, 5, 7, 8, 4, 3];
    var gList = new List<String>();
    gList.add("Ashik");
    gList.add("Abdul muneer");
    gList.add("Ishaq Bin ali");
    gList.add("Saneen fuad");
    for (int i = 0; i < gList.length; i++) {
      print(gList[i]);
    }

    //Maps
    var map = {
      //Key:Value
      "a": "ABCD",
      "b": "EFG",
      "c": "HIJ"
    };
    var map2 = {
      //Key:Value
      1: "ABCD",
      "b": 76,
      7: "HIJ"
    };
    var map3 = {
      //Key:Value
      "a": "ABCD",
      "b": "EFG",
      "c": "HIJ"
    };

    print('Map2 [1] >>> ${map2[1]}');
    print('Map2 [b] >>> ${map2["b"]}');
    bool chechNum = map2["b"] is num;
    print('check is num $chechNum');

    print(map['a']);

    map.forEach((k, v) => print('Key >>> $k Value >>> $v'));
    print(map.keys);
    print(map.values);

    //from dart lib
    logger.log("message");
    //from dart math lib
    print('maximum of numbers ${math.max(23, 4)}');
    print('Square root ${math.sqrt(45)}');

    //Data from teste libs librery:::
    print('Calculation sample >>> ${TesterLibs.calculate()}');
    print('Get name >>> ${TesterLibs.getName()}');
    print(new TesterLibs.LibClass().libName);

    return Text(
        '${wordPair.asPascalCase} ${_bonny.showName()} ${_bonny.name} ${_bonny
            .nationality} ${_bonny.profession = "Android developer "} ${_bonny
            .showProfession()} ${paulo} ${list[1]}. Length >>> ${list
            .length} Index >>> ${list.indexOf(4)} ');
  }
}

class Sample {
  String name;
  int age;
  String gender;
  int model;

  Sample(this.name, this.age);

  Sample.anotheronstructor(int model) {
    this.model = model;
  }

  //sample setter
  set setName(String name) => this.name = name;

  //sample getter
  String get getName => name;
}

class Person {
  String name, lastName, nationality;
  int age;

  Person(String name) {
    this.name = name;
  }

  void showName() {
    print(this.name);
  }
}

//inherit
class Bonny extends Person {
  String profession;

  void showProfession() {
    print(profession);
  }

  Bonny(String name) : super(name);

  //FIXME:when an method overrride from parent the call method from child,other wise its call from parent
  @override
  void showName() {
    print("Name from Bonny class and its override from supe class");
  }
}

class Paulo extends Person {
  bool playGuitar;

  Paulo(String name) : super(name);

  @override
  void showName() {
    //FIXME;this show name from Paulo...when we dont ovverride this method then paren class method call as default
    print('My name is Paulo');
  }

  @override
  String toString() {
    return '$playGuitar';
  }
}
/*

class ListRandomWords extends StatefulWidget{
  @override
   createState()=>();
}
*/

/*
class ListRandomWordsState extends State<ListRandomWords> {
  final _suggestion = <WordPair>[];//List array
  final _biggerFont = const TextStyle(fontSize: 18.0);//Font size

      Widget _buildSuggestions(WordPair pair) {
        return ListView.builder(
        padding:const EdgeInsets.all(16.0),
          itemBuilder:(context,i){
          if(i.isOdd){

            return Divider();
      }
      final index=i~/2;
          if(index>=_suggestion.lenght){
            _suggestion.addAll(generateWordPairs().take(10));

      }
      return _buildRow(_suggetions[index]);
      }
        );
      }
}
*/

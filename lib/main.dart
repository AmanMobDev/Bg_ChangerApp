import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'BG Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar:AppBar(
          title: Text('BackGround Changer'),
        ),
        body:HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  MyPageState createState(){
    return MyPageState();
  }
}

class MyPageState extends State<HomePage>{

  var currentColor = Colors.white;
  var currentButtonColor = Colors.black;

  var randomColor = [
    Colors.orange,
    Colors.black,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.indigo,
    Colors.pink,
    Colors.deepOrangeAccent,
  ];

  var randomButtonColor = [
    Colors.red,
    Colors.indigo,
    Colors.pink,
    Colors.deepOrangeAccent,
     Colors.orange,
    Colors.black,
    Colors.yellow,
    Colors.green,
    Colors.blue,
  ];

  changeColors(){
    var rnd = Random().nextInt(randomColor.length);
    setState(() {
      currentColor = randomColor[rnd];
      currentButtonColor = randomButtonColor[rnd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color:currentColor,
      child: Center(
          child: RaisedButton(
            color:currentButtonColor,
            onPressed: changeColors,
            padding: EdgeInsets.all(20.0),
            child: Text('Change Color',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
            ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_lab/ch8_4_stateful/test.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Column(children: [
          Image.asset('images/sub1/1.png'),
          Image.asset('images/sub1/2.png'),
          Image.asset('images/sub1/3.png')
        ],),
      ),
    );
  }
}